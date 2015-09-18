/*
Navicat MySQL Data Transfer

Source Server         : Lifeccp
Source Server Version : 50173
Source Host           : 101.251.211.186:3306
Source Database       : ruletest

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-09-17 10:51:28
*/

SET FOREIGN_KEY_CHECKS=0;


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `salt` varchar(64) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `descinfo` varchar(800) DEFAULT NULL,
  `sex` tinyint(3) unsigned DEFAULT '1',
  `nickname` varchar(64) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_login_time` datetime DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `birthday` varchar(30) DEFAULT NULL,
  `weixin` varchar(50) DEFAULT NULL,
  `department_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prov` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `dist` varchar(50) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `head_image` varchar(100) DEFAULT NULL,
  `random` varchar(32) DEFAULT NULL,
  `vCode` varchar(6) DEFAULT NULL,
  `vTime` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL COMMENT '用户真实姓名',
  PRIMARY KEY (`id`),
  KEY `i_username_` (`username`),
  KEY `index_user_mobile` (`mobile`),
  KEY `index_user_emai` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=570 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('22', '15201175465', '2BABB70BCC968231311FFE9597CA801B', 'F329057E70C71B131FDD475DE62D8AFC', 'test@163.com', '15201175465', null, '了为IE将范德萨卡覅我', '特长介绍sssqqqqaaaaQQQQKKK11', '1', '吴洋', '1', '2015-08-04 11:47:05', '2015-01-30 13:57:48', '2015-09-06 14:00:02', '2015-03-11', '15201175465', '3', '北京', '石景山区', null, '33', '', null, '503135', '2015-04-20 17:45:52', '吴洋');
INSERT INTO `user` VALUES ('26', '1@2.com', '1A8A022482CEFB3E44046DAFBC88AD09', 'F6DBF5AEC24B9765CB4E5C7CF4623B92', '1@2.com', '18618861886', '北京房山区长阳镇碧桂园55#5-201', 'sdf', 'sdf', '1', 'xin', '1', null, '2015-01-30 18:13:57', '2015-09-06 14:00:02', null, null, '0', null, null, null, '34', '', null, null, null, 'xin');
INSERT INTO `user` VALUES ('27', '2@2.com', 'BA500E978E3EC4469E462FB389B25082', '97A86A579B6186E2C6E28B5D0A6D1BA5', '2@2.com', '18610020152', '北京房山区长阳镇碧桂园55#5-201', 'ads', 'sadf', '1', 'x333', '1', '2015-02-02 14:13:03', '2015-01-30 18:14:28', '2015-09-06 14:00:02', null, null, '0', null, null, null, '34', '', null, null, null, 'x333');
INSERT INTO `user` VALUES ('28', '3@3.com', '168A239C3F24A153D167148DC3B276C5', 'E1ABF2AE07C1731BB3B1CD792C3DAD5E', '3@3.com', '18610020152', '', '', '', '1', 'x', '0', null, '2015-01-30 18:14:56', '2015-09-08 11:36:25', null, null, '0', null, null, null, '34', '', null, null, null, 'x');
INSERT INTO `user` VALUES ('29', '4@4.com', '1DDBDBA944E851962CD6B04F9E0532D1', '24E2C31E53DE3B319E61CFCB96CB1BC8', '4@4.com', '13811111111', '', '', '', '1', 'x', '0', null, '2015-01-30 18:15:36', '2015-09-06 14:00:02', null, null, '0', null, null, null, '34', '', null, null, null, 'x');
INSERT INTO `user` VALUES ('31', '5@5.com', '5E74E976E356661B50C9C2562B054625', '59E3A058A2B3D3618F29C79457D2FFE4', '5@5.com', '13911111111', '', '', '', '1', 'x', '0', null, '2015-01-30 18:16:14', '2015-09-06 14:00:02', null, null, '0', null, null, null, '34', '', null, null, null, 'x');
INSERT INTO `user` VALUES ('32', '6@6.com', '5A39D3454802DDFE363059D65A6F1F63', '1268E29252476B71BF356CAE74DC52A4', '6@6.com', '13610020152', '', '', '', '1', 'x11222', '0', null, '2015-01-30 18:16:49', '2015-09-06 14:00:02', null, null, '0', null, null, null, '34', '', null, null, null, 'x11222');
INSERT INTO `user` VALUES ('34', '9@9.com', 'EA2188A4D44E171FDA3CAC79D9DB94CC', '37553FF99B20674E40C4ADAB62465D96', '9@9.com', '', '', '', '', '1', '', '0', null, '2015-01-30 18:36:54', '2015-09-06 14:00:02', null, null, '0', null, null, null, '34', '', null, null, null, '');
INSERT INTO `user` VALUES ('35', '8@8.com', 'CBA64C95A99ECD8916B4182EB6C2A56E', 'FA1189B1CB126A2CAC69EF79B52DD12E', '8@8.com', '18610020152', '', '', '', '1', 'x', '0', null, '2015-01-30 18:37:19', '2015-09-06 14:00:02', null, null, '0', null, null, null, '34', '', null, null, null, 'x');
INSERT INTO `user` VALUES ('51', 'xin@xin.com', '6CE59F75DAAC016BEBFB4989EB1319E0', 'C52A01312FC607005807D97EF2FA9177', 'xin@xin.com', '18610020152', '地区', '放射科', '撒打发打发 ', '1', '南', '0', null, '2015-02-01 20:43:14', '2015-09-06 14:00:02', null, null, '0', null, null, null, '34', '', null, null, null, '南');
INSERT INTO `user` VALUES ('58', '18801137094', '25598D5809AF1385038C6A8B47D834D3', '114EF01A94B49283016E4D5EF2D53F43', 'zhanghuichao5@163.com', '18801137094', null, '放射科', '测试介绍', '1', 'zqc', '1', '2015-02-04 15:49:30', '2015-02-03 16:27:15', '2015-09-06 14:00:02', '2015-02-12', 'zqc', '1', '山东', '潍坊', '奎文区', '34', '', null, null, null, 'zqc');
INSERT INTO `user` VALUES ('59', 'zhanghuichao5@163.com', '80A1A5F9877ED3496E9C249EDCBEBCD3', '7510C53B9183EF2ADE5B795F4E84FB42', 'zhanghuichao5@163.com', '15201175465', null, '放射科', '', '1', 'zqc', '1', '2015-02-04 17:17:43', '2015-02-03 16:28:15', '2015-09-06 14:00:02', '2015-02-19', 'zqc', '3', '浙江', '温州', '龙湾区', '34', '', 'sqKRuEXM9efCxqxzVWM8E3RMfk7ajgQz', null, null, 'zqc');
INSERT INTO `user` VALUES ('60', 'yutao132@163.com', '9CEE04F546689381CADB7562E671AB7D', '56F9A3279373816B216867D947F35C9B', '345374612@qq.com', '15201175465', null, '放射科', 'test', '1', 'zqc', '0', '2015-02-08 20:24:58', '2015-02-04 10:20:38', '2015-09-06 14:00:02', '2015-02-12', 'zqc', '3', '河北', '邯郸', '峰峰矿区', '34', '', 'qHZPJMScZBUw5SoEhGuiXcgWb2drdL8I', '245033', '2015-02-08 18:58:39', 'zqc');
INSERT INTO `user` VALUES ('61', '15201175466', 'AF685B5013BC02A8D708E884B8B7C0EC', 'F192F5F835A151F90B0354F28C364E93', 'zhanghuichao5@163.com', '15201175466', null, '放射科', '', '1', 'zqc', '1', '2015-08-04 13:43:34', '2015-02-05 10:57:08', '2015-09-06 14:00:02', '2015-02-06', 'zqc', '2', '北京', '石景山区', '南关区', '35', '', null, null, null, 'zqc');
INSERT INTO `user` VALUES ('62', '15201175467', '6BAB0993B031F2EECEB46E6DA420A3BB', '0A408C74FFC8135EF2AAC1A23469EA63', 'zhanghuichao5@163.com', '15201175467', null, '放射科', '', '1', 'zqc', '1', '2015-08-04 11:34:46', '2015-02-05 10:58:18', '2015-09-06 14:00:02', '2015-02-04', 'zqc', '2', '河北', '唐山', '路北区', '36', '', null, null, null, 'zqc');
INSERT INTO `user` VALUES ('63', '15201175469', 'BC28F5A4F3E1BEC49691933E63EC2949', '5292ACBAFF7170E136472086C1DD4D5E', 'zhanghuichao5@163.com', '15201175465', null, '放射科', '', '1', 'zqc', '0', null, '2015-02-05 13:52:32', '2015-09-06 14:00:02', '2015-02-13', 'zqc', '2', '上海', '宝山区', null, '34', '', null, null, null, 'zqc');
INSERT INTO `user` VALUES ('64', '1@1.com', '6CFC42D07FD1921309FE2EB1E2A2317A', 'B42AC8517973037F80D046C8DFB1A681', '1@1.com', '13911111111', null, '放射科', 'sdf', '1', '医生1', '1', '2015-02-07 20:53:19', '2015-02-07 20:51:57', '2015-09-08 11:38:45', '2015-02-06', '123', '1', '吉林', '辽源', '东丰县', '48', '', 'nARNBmvmPWYbmDzZaVvgI8FX5fT0w7d0', null, null, '医生1');
INSERT INTO `user` VALUES ('65', '1@3.com', 'DF1DBBDD90F20B53B9FFA5489703F5AE', '6ABDCABAE0FA8AF611CD59248EA72F52', '1@1.com', '13911111111', null, '放射科', '', '1', '医生3', '1', '2015-02-07 20:56:01', '2015-02-07 20:55:49', '2015-09-08 11:38:53', '2015-02-06', '11111', '1', '内蒙古', '赤峰', '松山区', '48', '', null, null, null, '医生3');
INSERT INTO `user` VALUES ('66', '1@9.com', '9655F2CE811EDBD152872704372EE0C6', '31D4A2B828BB3802DD173C2CD1FFCBAC', '1@1.com', '13911111234', null, '放射科', '', '1', '医生9', '1', '2015-02-07 21:10:28', '2015-02-07 21:07:31', '2015-09-08 11:38:49', '2015-01-27', '13911111234', '2', '山西', '长治', '屯留县', '48', '', null, null, null, '医生9');
INSERT INTO `user` VALUES ('68', 'test@163.com', 'CA89E9EFCC9F6C531CAE167CC3471EDC', 'D884478477B6EE0EF52F49302F6482AD', 'test@163.com', '15201175465', null, '放射科', 'sd', '1', 'zqc', '0', null, '2015-02-08 20:55:36', '2015-09-06 14:00:02', '2015-02-13', '15201175465', '2', '河北', '秦皇岛', '山海关区', '38', '', null, null, null, 'zqc');
INSERT INTO `user` VALUES ('70', 'test2@163.com', '9210AEE9705F90FF16BED7C1A4EFB32F', '4F81CE336F90FFD7C82007A80CAC1D89', 'test2@163.com', '15201175465', null, '放射科', '', '2', 'zqc', '0', '2015-02-08 22:15:45', '2015-02-08 22:12:24', '2015-09-06 14:00:02', '2015-02-11', '15201175465', '2', '浙江', '温州', '瓯海区', '38', '', null, null, null, 'zqc');
INSERT INTO `user` VALUES ('71', '18610020152', 'C7BE2C154C0FD4DC596546043FC825F1', 'A4ACE138540B33FEC369F942E3BA1177', '1@1.com', '18610020152', null, '放射科', '', '1', 'x', '0', '2015-02-11 13:30:06', '2015-02-09 08:42:53', '2015-09-06 14:00:02', '2015-01-27', '18610020152', '1', '河北', '邢台', '临城县', '38', '', null, '851151', '2015-02-09 08:49:34', 'x');
INSERT INTO `user` VALUES ('74', '1@11.com', 'F0EB79DA56E59C94B191E4A046338472', '73CA2BEE840C03CCA42A491E9C58F755', '1@11.com', '18610020152', null, '放射科', '', '1', 'x', '0', '2015-02-09 15:23:32', '2015-02-09 15:20:43', '2015-09-06 14:00:02', '2015-02-11', '18610020152', '2', '浙江', '宁波', '北仑区', '38', '', null, null, null, 'x');
INSERT INTO `user` VALUES ('75', 'xinguozhong@126.com', '5AA807E7C70CD3539EC2E616B3FD2E73', 'C57402FD6A65AAE808761F2C2B217372', 'xinguozhong@126.com', '18610020152', null, '放射科', '', '1', '李萌', '1', '2015-03-30 15:45:40', '2015-02-09 17:40:04', '2015-09-06 14:00:02', '2015-02-09', '18610020152', '1', '河南', '信阳', '罗山县', '38', '', null, null, null, '李萌');
INSERT INTO `user` VALUES ('76', '15201175488', 'C3E9B6C13B42239B5D5EECBA8860F6D1', 'E67F2663B61B9764015DA4588C5D54CF', 'zhanghuichao5@163.com', '15201175465', null, '放射科', '', '1', '张全超', '1', '2015-02-10 17:32:40', '2015-02-10 17:26:23', '2015-09-06 14:00:02', '2015-02-05', '15201175465', '2', '河北', '邢台', '邢台县', '34', '', null, null, null, '张全超');
INSERT INTO `user` VALUES ('77', '4@3.com', 'A49629F72026CE77CEB7749C761D71B2', '538F04496F9AD160A6A8B540019B03EE', '3@3.com', '18610020152', null, '放射科', '', '1', 'x', '0', '2015-02-11 14:16:19', '2015-02-11 14:15:15', '2015-09-06 14:00:02', '2015-01-30', '18610020152', '1', '山西', '阳泉', '郊区', '34', '', null, null, null, 'x');
INSERT INTO `user` VALUES ('78', '126@126.com', '92B370091D52E64CC5AD2CA8245E226C', 'F483D9101BC0648A4AB86B9A0E011A2B', '126@126.com', '13666116612', null, '放射科', '', '1', '司徒昊天', '1', '2015-07-22 11:07:31', '2015-02-11 17:27:18', '2015-09-06 14:00:02', '2015-10-12', '13666116612', '1', '北京', '朝阳区', null, '34', '20150317155345anjsjf.jpg', null, null, null, '司徒昊天');
INSERT INTO `user` VALUES ('80', 'xinmkl1@sohu.com', '9CAA183E6E46720685E86AECA8FC3DE2', 'E1424B86F9E495774ED7A4EEFBFE6A34', 'xinmkl@sohu.com', '18610020152', null, '放射科', '', '1', 'x', '0', '2015-02-12 11:05:49', '2015-02-12 11:04:39', '2015-09-06 14:00:02', '2015-02-12', '18610020152', '1', '湖北', '潜江', '潜江', '34', '', 'SI0UIM9BhhlBjQklTu3CAAljIiCKggwb', null, null, 'x');
INSERT INTO `user` VALUES ('85', 'xinmkl@sohu.com', '1739A63BD00CA5ED539CB47C35146FEB', 'FBB1B9C7D518627454B8974539E493FB', 'xinmkl@sohu.com', '18610020152', null, '放射科', 'sdfa', '1', '赵志刚', '1', '2015-03-30 14:59:25', '2015-02-12 11:10:31', '2015-09-06 14:00:02', '2015-02-12', '18610020152', '1', '内蒙古', '赤峰', '巴林左旗', '34', '20150308090446cprvej.jpg', '', null, null, '赵志刚');
INSERT INTO `user` VALUES ('88', '5@5.com', 'FDD3EB2022E2D286C32E3A591D3498F8', '0AB4DD4EB6ADE03A3D3784CEB91E5ECD', 'xinmkl@sohu.com', '18610020152', null, '放射科', '', '1', 'xgz', '1', null, '2015-02-13 20:46:51', '2015-09-06 14:00:02', '2015-02-13', '18610020152', '1', '黑龙江', '牡丹江', '阳明区', '34', '', null, null, null, 'xgz');
INSERT INTO `user` VALUES ('89', '2@9.com', 'DAB86E5BDE7C39274FA3099543A76813', '9A938EB34B6A58DC1EDD9BB9211FB915', '2@9.com', '18610020152', null, '', '', '1', 'x', '1', null, '2015-02-16 10:50:00', '2015-09-06 14:00:02', '2015-02-18', '18610020152', '1', '山西', '阳泉', '郊区', '34', '', null, null, null, 'x');
INSERT INTO `user` VALUES ('90', '3@3.com', 'A88F4840C6FA33D12396CD391CA006DA', '2C0FD293636ED0BEEBCD3012F950B8AC', '3@3.com', '18610020152', null, '', '', '1', '想', '1', null, '2015-02-16 12:59:11', '2015-09-06 14:00:02', '2015-02-10', '18610020152', '1', '河北', '张家口', '', '34', '', null, null, null, '想');
INSERT INTO `user` VALUES ('94', 'zg@sohu.com', 'D1680CF6F4D62B74A4FF36B6113BE78A', '078227E62C7D2F313D0E6052274E30A2', '12@12.com', '18610020152', null, '放射科', '', '1', '一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十以而三四', '1', null, '2015-02-22 21:13:56', '2015-09-06 14:00:02', '2015-01-28', '18610020152', '1', '河南', '信阳', '平桥区', '34', '', null, null, null, '一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十以而三四');
INSERT INTO `user` VALUES ('113', '33@33.com', 'C828C9EFA9CE97FFFDA0DFE404C34BAF', '3B50AE124481281634DBC6F135DC9C9B', '33@33.com', '18610020152', null, '放射科', 's', '1', 'x', '1', null, '2015-02-24 21:42:25', '2015-09-06 14:00:02', '2015-02-20', '18610020152', '1', '江西', '宜春', '铜鼓县', '34', '', null, null, null, 'x');
INSERT INTO `user` VALUES ('120', '18801137095', null, '69A172E83A549E6501ACB51821CAAC03', 'zhanghuichao5@163.com', '18801137095', null, '放射科', 'sdfsdfdsf', '1', 'zqc123', '1', '2015-03-02 16:26:15', '2015-03-02 13:48:54', '2015-09-06 14:00:02', '2015-03-04', 'weixin_123', '1', '山东', '济南', '历下区', '34', '', null, null, null, 'zqc123');
INSERT INTO `user` VALUES ('121', '18801137091', '0257C1B28B20E97282D74730F1EB81F6', 'BDD1E854C212B5DFD8C5D0D0571826FD', 'zhanghuichao5@163.com', '18801137091', null, '放射科', '', '1', 'zqc', '1', '2015-03-02 15:26:26', '2015-03-02 13:57:07', '2015-09-06 14:00:02', '2015-03-04', '18801137091', '2', '湖北', '恩施', '建始县', '34', '', null, null, null, 'zqc');
INSERT INTO `user` VALUES ('157', '18801137098', '57F97E9214B84396528A1FA331F1BDCC', 'C2DB5E02108A8027DA8C24B41B47DA51', 'zhanghuichao5@163.com', '18801137098', null, '放射科', '', '1', 'ZQC', '1', '2015-03-08 09:02:26', '2015-03-08 09:01:31', '2015-09-06 14:00:02', '2015-03-04', '18801137098', '2', '福建', '泉州', '德化县', '34', '20150308085747uqwlwb.jpg', null, null, null, 'ZQC');
INSERT INTO `user` VALUES ('180', '15201175469', '95F39C9DCD14DDA84561A4E3AC0D6E2D', '5D6278FB3891DF62C3B7D54576E710B1', 'zhanghuichao5@163.com', '15201175469', null, '放射科', '没特长', '1', 'zqc2222', '1', '2015-03-13 15:02:59', '2015-03-13 15:00:35', '2015-09-06 14:00:02', '2015-03-12', '15201175469', '2', '天津', '河东区', null, '34', '20150313150022qxwqew.jpg', null, null, null, 'zqc2222');
INSERT INTO `user` VALUES ('195', '83665832@qq.com', 'B9979FE0E2CE9ED66A4E6E9B52D659C1', '35F8BD3AFC90319F699554FDA596EE7B', '83665832@qq.com', '18691834124', null, '放射科', '0.0\n', '1', '庞海超', '1', '2015-03-17 15:54:40', '2015-03-17 15:54:02', '2015-09-06 14:00:02', '2015-03-17', '18691834124', '1', '陕西', '西安', '碑林区', '34', '20150317155345anjsjf.jpg', null, null, null, '庞海超');
INSERT INTO `user` VALUES ('234', 'xing', '92E2646B3459E9061F425CE59DA9A285', '25583580D6CE6E1570D8E9F88CD48A97', '163@163.com', '13988888888', null, '放射科', '死的范德萨', '1', '明星', '1', '2015-07-22 11:07:12', '2015-03-23 18:05:25', '2015-09-02 15:14:19', '2015-03-23', '13988888888', '1', '北京', '朝阳区', null, '38', '20150324152835fswjbh.png', null, null, null, '明星');
INSERT INTO `user` VALUES ('238', 'star', '41B0F6F4B5238A9C780882F551E1A252', '0B8006C557E9D12BCB7E2D7160C9DC29', '126@163.com', '18858888888', null, '放射科', '', '1', '星星', '1', '2015-07-22 11:09:55', '2015-03-24 15:14:40', '2015-09-02 11:13:34', '2015-03-24', '18858888888', '1', '北京', '朝阳区', null, '34', '20150324151416awiigv.png', null, null, null, '星星');
INSERT INTO `user` VALUES ('240', 'yeah', 'EF9AFC995CD575ED8FFA48910736D8B6', '5D58AD0B86108B41FB2C7ECA60541D02', 'yeah@yeah.net', '18868888888', null, '放射科', '', '2', '大猩猩', '1', '2015-09-11 13:57:27', '2015-03-24 16:10:18', '2015-09-02 15:14:14', '2015-03-24', '18868888888', '1', '北京', '朝阳区', null, '38', '20150324160941wxlixf.png', null, null, null, '大猩猩');
INSERT INTO `user` VALUES ('272', 'life', 'EF9AFC995CD575ED8FFA48910736D8B6', '5D58AD0B86108B41FB2C7ECA60541D02', 'life@lifeccp.com', '15555555555', null, '放射科', '', '1', 'Tony', '1', null, '2015-04-01 14:38:31', '2015-09-06 14:00:02', '2015-04-02', '15555555555', '2', '北京', '石景山区', null, '34', '', null, null, null, 'Tony');
INSERT INTO `user` VALUES ('358', 'zhanghuichao5', '2BABB70BCC968231311FFE9597CA801B', 'F329057E70C71B131FDD475DE62D8AFC', 'zhanghuichao5@163.com', '18611573918', null, '放射科', '', '1', 'zqc', '1', '2015-06-10 14:20:36', '2015-04-20 14:51:38', '2015-09-06 14:00:02', '2015-04-02', '15201175465', '4', '北京', '石景山区', null, '35', '', null, '785528', '2015-04-20 15:27:51', 'zqc');
INSERT INTO `user` VALUES ('391', 'zhanghuichao4', 'D9537346D376EE5A7A122F2F5808E255', 'DC941B0FDC50B47C3126C17095D0DD82', 'zhanghuichao5@163.com', '15201175465', null, '放射科', '', '1', 'zqc', '1', null, '2015-04-23 14:04:26', '2015-09-06 14:00:02', '2015-04-01', '15201175465', '5', '北京', '崇文区', null, '35', '', null, null, null, 'zqc');
INSERT INTO `user` VALUES ('392', '张会chao', '601762923BA432FF3E195811138F62C0', '86E338DF5738E457485C1CAE4E24D2C9', 'zhanghuichao5@163.com', '15201175465', null, '放射科', '', '1', '张会抄', '1', null, '2015-04-23 14:20:39', '2015-09-06 14:00:02', '2015-04-01', '15201175465', '5', '北京', '东城区', null, '35', '', null, null, null, '张会抄');
INSERT INTO `user` VALUES ('394', '高晓鹏777', '1086768B6FE24FC9FA8A64B4D2A0F3E0', '6D69DEE118BA71451065037F0ABD212B', '85542866@qq.com', '13520442054', null, '放射科', '', '1', '高晓鹏', '1', '2015-04-23 14:49:08', '2015-04-23 14:37:30', '2015-09-06 14:00:02', '2015-04-03', '13520442054', '5', '北京', '朝阳区', null, '35', '', null, null, null, '高晓鹏');
INSERT INTO `user` VALUES ('409', 'Expert01', '5A893FA9AAF4ACD2211360D1F8559BF7', 'DED47950B89E18E619579236AC8CBEB1', 'Expert01@163.com', '13811111111', null, '放射科', '', '1', '专家1', '1', null, '2015-04-30 16:25:49', '2015-09-06 14:00:02', '2015-04-30', '13811111111', '1', '湖北', '武汉', '武昌区', '38', '', null, null, null, '专家1');
INSERT INTO `user` VALUES ('410', 'Expert02', 'D6C455003779EA038D8F6BA830B74178', 'FA3DDD00DBC448F3CDCEAE17F4C33BE1', 'Expert02@163.com', '13822222222', null, '放射科', '', '1', '专家2', '1', null, '2015-04-30 16:27:08', '2015-09-06 14:00:02', '2015-04-30', '13822222222', '1', '湖北', '武汉', '武昌区', '38', '', null, null, null, '专家2');
INSERT INTO `user` VALUES ('411', 'Expert03', 'CE5EED74DACB025BDEDF317C3F07ABE7', '60120FB895E30B869198EBEB97A46811', 'Expert03@163.com', '13833333333', null, '放射科', '', '1', '专家3', '1', null, '2015-04-30 16:27:52', '2015-09-06 14:00:02', '2015-04-30', '13833333333', '1', '湖北', '武汉', '武昌区', '38', '', null, null, null, '专家3');
INSERT INTO `user` VALUES ('412', 'Expert04', 'F26F94B19700CCD125FBD97A4BECB90C', '9495ABFFF0C6DB59A9EA7D9AE4D9B7AB', 'Expert04@163.com', '13844444444', null, '放射科', '', '1', '专家4', '1', null, '2015-04-30 16:28:42', '2015-09-06 14:00:02', '2015-04-30', '13844444444', '1', '湖北', '武汉', '武昌区', '38', '', null, null, null, '专家4');
INSERT INTO `user` VALUES ('413', 'Expert05', '34E9EC9CBA1D87138FA7FEC046A04755', 'B5BF34ABA3112A51A02ED64E97A81DAD', 'Expert05@163.com', '13855555555', null, '放射科', '', '1', '专家5', '1', null, '2015-04-30 16:29:26', '2015-09-06 14:00:02', '2015-04-30', '13855555555', '1', '湖北', '武汉', '武昌区', '38', '', null, null, null, '专家5');
INSERT INTO `user` VALUES ('414', 'Expert06', 'DF35D924F8D71E822883D3D08F541889', '34F902189160E78BDE025F66A1AFDDAB', 'Expert06@163.com', '13866666666', null, '放射科', '', '1', '专家6', '1', null, '2015-04-30 16:30:37', '2015-09-06 14:00:02', '2015-04-30', '13866666666', '1', '湖北', '武汉', '武昌区', '38', '', null, null, null, '专家6');
INSERT INTO `user` VALUES ('415', 'Expert07', '857830D663BC8D42E64F22022F2770AF', '4C556563201711C32A0D320309464A5E', 'Expert07@163.com', '13877777777', null, '放射科', '', '1', '专家7', '1', null, '2015-04-30 16:31:25', '2015-09-06 14:00:02', '2015-04-30', '13877777777', '1', '湖北', '武汉', '武昌区', '38', '', null, null, null, '专家7');
INSERT INTO `user` VALUES ('416', 'Expert08', '2EB194192DE4201A42040D10E2CE00B6', '813CC41A8C6321AAD64907F1B41D38FD', 'Expert08@163.com', '13888888888', null, '放射科', '', '1', '专家8', '1', null, '2015-04-30 16:32:21', '2015-09-06 14:00:02', '2015-04-30', '13888888888', '1', '湖北', '武汉', '武昌区', '38', '', null, null, null, '专家8');
INSERT INTO `user` VALUES ('417', 'Expert09', '5EEB22DAF485C62CA1CD538C9B38673D', '3B4A34EEAC452032641C7E190ED1CBAA', 'Expert09@163.com', '13899999999', null, '放射科', '', '1', '专家9', '1', null, '2015-04-30 16:33:07', '2015-09-06 14:00:02', '2015-04-30', '13899999999', '1', '湖北', '武汉', '武昌区', '38', '', null, null, null, '专家9');
INSERT INTO `user` VALUES ('421', '5566', 'D29E0781D343AAB8A97E8FE05CBA2F30', '7E378EDA3FEC8C1CDE65E1BD01A4624F', '5566@163.com', '18855556666', null, '放射科', '', '1', '5566', '1', null, '2015-07-02 11:13:57', '2015-08-26 12:01:28', '2015-07-02', '18855556666', '3', '北京', '石景山区', null, '33', 'doctorImage/20150702/20150702111334aoeanr.jpg', null, null, null, '5566');
INSERT INTO `user` VALUES ('423', '7788', '59CE4B6DB024140042735A7DC85FACC8', 'F87180E847942B3BDE1923A5E856879D', '7788@163.com', '18877778888', null, '放射科', '', '2', '7788', '1', '2015-07-03 13:18:52', '2015-07-03 13:18:38', '2015-08-26 12:01:28', '2015-07-03', '18877778888', '2', '北京', '石景山区', null, '33', 'doctorImage/20150703/20150703131824quurhu.jpg', null, null, null, '7788');
INSERT INTO `user` VALUES ('498', '01', 'B3DD291A8E9F288262975D1F1BB9940A', '55820CB070AD2AB6DCE885AF789765A1', '9999@163.com', '13300009999', null, '放射科', '9999DESC', '1', '9999Tony', '1', null, '2015-08-13 15:28:40', '2015-09-06 14:00:02', '2015-08-13', '13300009999', '1', '北京', '东城区', null, '37', null, null, null, null, '9999Tony');
INSERT INTO `user` VALUES ('499', 'zqc2', '1790AD286FC9D035C530F14002981C0B', '756D744E2B2B9CF5C6C00678D55F6862', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc', '1', null, '2015-08-31 16:14:19', '2015-09-06 14:00:02', null, null, '2', null, null, null, '38', null, null, null, null, 'zqc');
INSERT INTO `user` VALUES ('500', 'zqc2', '146582C9A28951E9539A9F1FF17720A9', '4A3FAC1E61557344930264108EF00792', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc', '1', null, '2015-08-31 16:14:27', '2015-09-06 14:00:02', null, null, '2', null, null, null, '38', null, null, null, null, 'zqc');
INSERT INTO `user` VALUES ('501', 'zqc2', 'A2D05A480B78AB2221A7C3A3443A48F6', '32DBD83D8C72B23005214D89FC9B2082', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc', '1', null, '2015-08-31 16:19:26', '2015-09-06 14:00:02', null, null, '2', null, null, null, '38', null, null, null, null, 'zqc');
INSERT INTO `user` VALUES ('502', 'zqc12', '32B6F42EA15F212BDE19ACD25D19E97C', 'B5FC52685485D4579626721F378F1223', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc123', '1', null, '2015-08-31 16:31:30', '2015-09-06 14:00:02', null, null, '1', null, null, null, '38', null, null, null, null, 'zqc123');
INSERT INTO `user` VALUES ('503', 'zqc测试大组长', '076EAB9619E69F76FF1048173D3C08C3', '67ED07C57252406E92BC9B5C396CB6DD', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc测试', '1', null, '2015-09-01 11:25:24', '2015-09-06 14:00:02', null, null, '1', null, null, null, '34', null, null, null, null, 'zqc测试');
INSERT INTO `user` VALUES ('504', 'zqc角色测试', '66F91EA9AB5DC39E5378BE25B864ACAF', 'CB15EAAEE354005BC7EF57DE7F35D5CB', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, '角色测试', '1', null, '2015-09-01 11:26:07', '2015-09-06 14:00:02', null, null, '1', null, null, null, '46', null, null, null, null, '角色测试');
INSERT INTO `user` VALUES ('505', 'zqc测试邮箱', '311234DBB7A114B7899E42F9E3B3509E', 'F26DA0EFA5C223741B52AECB0AC27578', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc email', '1', null, '2015-09-02 10:16:19', '2015-09-06 14:00:02', null, null, '2', null, null, null, '34', null, null, null, null, 'zqc email');
INSERT INTO `user` VALUES ('506', 'zqcemail2', '1B6DF98C0A94F86B49C71475003AB60E', '4558EF6DA3639D3836F354375A5A8AC5', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc邮箱测试', '1', null, '2015-09-02 10:20:53', '2015-09-06 14:00:02', null, null, '3', null, null, null, '38', null, null, null, null, 'zqc邮箱测试');
INSERT INTO `user` VALUES ('507', 'zqcemial4', 'AC2438B76AAA4EC25F50243149E464F0', 'B6D1A59FC537A412F9E8250334C57B9B', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc邮箱测试', '1', null, '2015-09-02 10:24:10', '2015-09-06 14:00:02', null, null, '3', null, null, null, '38', null, null, null, null, 'zqc邮箱测试');
INSERT INTO `user` VALUES ('508', 'zqcemail5', '60FB374E18156020629D18F0868A7CCB', 'CC42212F4CFDA51FF32A0A9F4E669218', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc邮箱测试', '1', null, '2015-09-02 10:29:14', '2015-09-06 14:00:02', null, null, '3', null, null, null, '38', null, null, null, null, 'zqc邮箱测试');
INSERT INTO `user` VALUES ('509', 'zqcemial6', 'C6E20AEE14D43EA43F5FBC4D655ECFB9', 'A57E20D519857C07D7FE1EB69ECAD5FA', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc邮箱测试', '1', null, '2015-09-02 10:38:57', '2015-09-06 14:00:02', null, null, '2', null, null, null, '45', null, null, null, null, 'zqc邮箱测试');
INSERT INTO `user` VALUES ('510', 'zqcemail7', '5E27E81C9A329A9AFFA18D28BEC850C3', '7D1E05E9AA1302518F83436FB44FC9C8', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc邮箱测试', '1', null, '2015-09-02 10:43:28', '2015-09-06 14:00:02', null, null, '3', null, null, null, '45', null, null, null, null, 'zqc邮箱测试');
INSERT INTO `user` VALUES ('511', 'zqcemail9', 'D6EF9D60C35561FA16281F4C8104D167', '59AD0B1D1FFCF0CBF9AE1952DEAE8FF4', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc邮箱测试', '1', null, '2015-09-02 10:46:49', '2015-09-06 14:00:02', null, null, '3', null, null, null, '46', null, null, null, null, 'zqc邮箱测试');
INSERT INTO `user` VALUES ('512', 'zqcemail10', '2F2401F26879A0719EF6406A39B79A5A', '2AE84749457C1F4BFEF3228882E47FEC', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc邮箱测试9', '1', null, '2015-09-02 13:00:52', '2015-09-06 14:00:02', null, null, '2', null, null, null, '38', null, null, null, null, 'zqc邮箱测试9');
INSERT INTO `user` VALUES ('513', 'zqcemail11', '0D7322B1AED5646FBE09E94910A71F02', '1F63DD251935225862E279FDF878228C', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc邮箱测试', '1', null, '2015-09-02 13:05:35', '2015-09-06 14:00:02', null, null, '3', null, null, null, '46', null, null, null, null, 'zqc邮箱测试');
INSERT INTO `user` VALUES ('514', 'zqcpwd', 'ED9076857C5E874D2BCD79341011AA45', '4A9150097E0EE7E421DCF21F464CB894', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc用户修改密码', '1', '2015-09-02 14:41:01', '2015-09-02 14:13:57', '2015-09-06 14:00:02', null, null, '1', null, null, null, '38', null, null, null, null, 'zqc用户修改密码');
INSERT INTO `user` VALUES ('515', 'zqc测试集团华西', 'C5F4B3DB6154BEADE577E701794AFC05', '8EA2B494C4610DDC12C4B9D331FA3ED6', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc华西', '1', '2015-09-06 16:00:44', '2015-09-06 13:57:05', '2015-09-07 09:44:24', null, null, '1', null, null, null, '42', null, null, null, null, '华西');
INSERT INTO `user` VALUES ('516', 'zqc测试集团华西1', 'EF9AFC995CD575ED8FFA48910736D8B6', '5D58AD0B86108B41FB2C7ECA60541D02', '397281627@qq.com', '15201175465', null, null, null, null, 'zqc华西1', '1', '2015-09-06 15:23:35', '2015-09-06 13:57:08', '2015-09-09 15:27:26', null, null, '1', null, null, null, '47', null, null, null, null, 'zqc华西1');
INSERT INTO `user` VALUES ('517', 'zqc华西3', '1461F2F65070086AC5A60BE3AE50AC4A', 'B74074096ABAEDD7AB2A98F48861D53D', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, '华西三', '1', null, '2015-09-07 09:39:31', '2015-09-07 09:39:31', null, null, '1', null, null, null, '42', null, null, null, null, 'zqc华西3');
INSERT INTO `user` VALUES ('518', 'zqc登陆名字', 'B669B3F12BF9E63D0EEF0D96B684943C', '3BCFC7162B3EA8FA2A2FE7A65F052A57', 'zhanghuichaoi5@163.com', '15201175465', null, null, null, null, 'zqc用户名', '1', null, '2015-09-07 09:47:22', '2015-09-07 09:47:22', null, null, '4', null, null, null, '42', null, null, null, null, 'zqc登陆名字');
INSERT INTO `user` VALUES ('519', 'zqc登录名2', '19F62459394575DD0DFCB1EC4407C03C', '3B8FB814926546B979C9D67A64D5A9E5', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc用户姓名2', '1', null, '2015-09-07 09:55:03', '2015-09-07 09:55:03', null, null, '4', null, null, null, '42', null, null, null, null, 'zqc登录名2');
INSERT INTO `user` VALUES ('520', 'zqc登录名3', 'FB29F8CFC9F02BC8E978A2641E9F802A', 'AB1FA153B294397448A828DC332E7E56', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, 'zqc用户姓名3', '1', null, '2015-09-07 10:02:24', '2015-09-07 10:02:24', null, null, '2', null, null, null, '47', null, null, null, null, 'zqc用户姓名3');
INSERT INTO `user` VALUES ('523', 'wingspan', 'D1A4878FB8047D14E23A243C5D22D2EE', '5B8A97A4353BBFC11B05DDF208BE0705', 'humingxing@wingspan.cn', '13311113333', null, null, null, null, '翼展集团管理员', '1', '2015-09-08 11:14:37', '2015-09-08 11:10:28', '2015-09-08 11:22:26', null, null, '5', null, null, null, '59', null, null, null, null, '翼展集团管理员');
INSERT INTO `user` VALUES ('533', 'chaowaijituan', 'FDDE134A4E978F0081BFA1C6B86C0280', '20184A2A72CB9B4EC9F4E69F9B8C1303', '397281627@qq.com', '15201175465', null, null, null, null, '朝外集团管理员', '1', null, '2015-09-09 14:38:04', '2015-09-09 14:38:04', null, null, '1', null, null, null, '69', null, null, null, null, '朝外集团管理员');
INSERT INTO `user` VALUES ('535', 'chaowaiyiyuan', 'FCCBF4E8AE364B2AE24867C2DCB23BC7', 'EBB0F3C8C25C93F28A71F49C5E397F3A', '397281627@qq.com', '15201175465', null, null, null, null, '朝外医院管理员', '1', null, '2015-09-09 14:53:35', '2015-09-09 14:53:35', null, null, '2', null, null, null, '69', null, null, null, null, '朝外医院管理员');
INSERT INTO `user` VALUES ('538', 'fff', '6D4E7B4EBA8A9923447012DB4D5216A3', 'FFB6F7E59C60EF7C4FED10964D2180D7', 'humingxing@wingspan.cn', '13211111111', null, null, null, null, 'fff', '1', '2015-09-09 16:24:53', '2015-09-09 16:19:58', '2015-09-09 16:37:22', null, null, '1', null, null, null, '51', null, null, null, null, 'fff');
INSERT INTO `user` VALUES ('541', 'roletest', '082F40E713CC64D80BD816A4D23CA40C', '3B967A21CCFB035B3CF8B998657D9BF0', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, '测试角色', '1', null, '2015-09-10 10:37:31', '2015-09-10 10:37:31', null, null, '2', null, null, null, '57', null, null, null, null, '测试角色');
INSERT INTO `user` VALUES ('542', 'roletest2', '356EE03F01C425F8BC1667FDAA7470F7', 'B77361C18830227E105727AD98F6A8AF', 'zhanghuichao5@163.com', '15201175465', null, null, null, null, '角色测试2', '1', null, '2015-09-10 10:40:15', '2015-09-11 11:21:27', null, null, '2', null, null, null, '43', null, null, null, null, '角色测试2');
INSERT INTO `user` VALUES ('547', 'admin', '0825750F0017C915285FDF0FDE73BF15', '51B77B7898794198EC9E7FBD019D8CEE', 'henry@wingspan.cn', '13311111111', null, null, null, null, 'admin', '1', null, '2015-09-11 09:51:34', '2015-09-11 09:51:34', null, null, '5', null, null, null, '59', null, null, null, null, 'admin');
INSERT INTO `user` VALUES ('556', 'administrator', '94283F8B8DE86B42F9E11AA3690817E9', 'E16992EA7C6DACD7C810C287FD8F72A2', 'humingxing@wingspan.cn', '13111111111', null, null, null, null, 'administrator', '1', null, '2015-09-11 13:59:50', '2015-09-11 13:59:50', null, null, '5', null, null, null, '59', null, null, null, null, 'administrator');


-- ----------------------------
-- Table structure for assignRule
-- ----------------------------
DROP TABLE IF EXISTS `assignRule`;
CREATE TABLE `assignRule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule_type` tinyint(4) DEFAULT NULL,
  `article` varchar(1023) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_id` int(10) unsigned DEFAULT NULL,
  `priority` smallint(6) DEFAULT NULL,
  `from_id` int(10) unsigned DEFAULT NULL,
  `to_id` int(10) unsigned DEFAULT NULL,
  `enabled` bit(1) DEFAULT b'1',
  `device_type` varchar(64) DEFAULT NULL COMMENT '设备类型',
  PRIMARY KEY (`id`),
  KEY `IDX_FROM` (`from_id`),
  KEY `IDX_TO` (`to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1094 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assignRule
-- ----------------------------
INSERT INTO `assignRule` VALUES ('1028', '1', null, 'mx的集团间规则1', '2015-09-06 17:29:54', '25', '1', '42', '38', '', 'CT');
INSERT INTO `assignRule` VALUES ('1029', '1', null, 'mx的集团间规则1', '2015-09-06 17:29:54', '25', '1', '42', '38', '', 'MR');
INSERT INTO `assignRule` VALUES ('1030', '1', null, 'mx的集团间规则1', '2015-09-06 17:29:54', '25', '1', '42', '38', '', 'X-RAY');
INSERT INTO `assignRule` VALUES ('1037', '1', null, 'mx的集团间规则2', '2015-09-06 18:06:55', '25', '1', '42', '34', '', 'RF');
INSERT INTO `assignRule` VALUES ('1038', '1', null, 'mx的集团间规则2', '2015-09-06 18:06:57', '25', '1', '42', '34', '', 'DX');
INSERT INTO `assignRule` VALUES ('1039', '2', null, 'mx的集团内规则1', '2015-09-06 18:01:56', '25', '3', '48', '34', '', 'MR');
INSERT INTO `assignRule` VALUES ('1040', '2', null, 'mx的集团内规则1', '2015-09-06 18:01:56', '25', '3', '48', '34', '', 'X-RAY');
INSERT INTO `assignRule` VALUES ('1041', '3', null, 'mx的院内规则1', '2015-09-07 10:00:19', '25', '5', '42', '200014', '', 'CT');
INSERT INTO `assignRule` VALUES ('1042', '3', null, 'mx的院内规则1', '2015-09-07 10:00:19', '25', '5', '42', '200014', '', 'MR');
INSERT INTO `assignRule` VALUES ('1043', '2', null, 'xx的集团内规则1', '2015-09-07 10:51:15', '238', '3', '50', '34', '', 'DX');
INSERT INTO `assignRule` VALUES ('1044', '2', null, 'xx的集团内规则1', '2015-09-07 10:51:15', '238', '3', '50', '34', '', 'X-RAY');
INSERT INTO `assignRule` VALUES ('1045', '3', null, 'xx的院内规则1', '2015-09-07 10:52:49', '238', '3', '48', '200015', '', 'X-RAY');
INSERT INTO `assignRule` VALUES ('1046', '3', null, 'dxx的院内规则1', '2015-09-07 10:56:04', '240', '3', '34', '200017', '', 'DX');
INSERT INTO `assignRule` VALUES ('1047', '1', null, '超管的院内规则1', '2015-09-08 11:19:29', '25', '4', '56', '48', '', 'CT');
INSERT INTO `assignRule` VALUES ('1048', '1', null, '超管的院内规则1', '2015-09-08 11:19:29', '25', '4', '56', '48', '', 'MR');
INSERT INTO `assignRule` VALUES ('1049', '1', null, '超管的院内规则1', '2015-09-08 11:19:29', '25', '4', '56', '48', '', 'X-RAY');
INSERT INTO `assignRule` VALUES ('1050', '3', null, '双流卫生院Push', '2015-09-08 11:42:30', '25', '1', '56', '200018', '', 'CT');
INSERT INTO `assignRule` VALUES ('1051', '2', null, '文井乡CT上传', '2015-09-08 14:58:58', '523', '2', '58', '59', '', 'CT');
INSERT INTO `assignRule` VALUES ('1052', '3', null, '翼展院外CT', '2015-09-08 14:59:47', '523', '3', '58', '200019', '', 'CT');
INSERT INTO `assignRule` VALUES ('1070', '1', null, '1111', '2015-09-10 18:06:34', '25', '1', '37', '37', '', 'CT');
INSERT INTO `assignRule` VALUES ('1071', '2', null, 'sss', '2015-09-10 18:11:23', '25', '1', '58', '57', '', 'DX');
INSERT INTO `assignRule` VALUES ('1072', '3', null, 'dxx的院内规则2', '2015-09-07 10:56:04', '240', '3', '38', '200017', '', 'CT');


-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactor` char(64) DEFAULT NULL,
  `contactor_phone` char(64) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enabled` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enterprise
-- ----------------------------
INSERT INTO `enterprise` VALUES ('102', '集团华西user', '11111111111111111测试', 'zqc2', '15201175465', '2015-09-09 15:24:24', '\0');
INSERT INTO `enterprise` VALUES ('104', '集团华西2', '11111111111111111是的', 'zqc244传', '15201175465', '2015-08-28 11:36:37', '');
INSERT INTO `enterprise` VALUES ('105', '集团华西3', '11111111111111111', 'zqc', '15201175653', '2015-09-09 13:47:08', '');
INSERT INTO `enterprise` VALUES ('108', 'zqc集团', '测试', 'zqc', '15201175465', '2015-08-28 11:36:39', '');
INSERT INTO `enterprise` VALUES ('109', 'zqc集团测试', '', '张全超', '15201175465', '2015-08-26 13:22:32', '');
INSERT INTO `enterprise` VALUES ('110', '星集团', '星集团', '星', '13688888888', '2015-09-11 14:05:59', '');
INSERT INTO `enterprise` VALUES ('111', '翼展集团', 'yz', 'yz', '18500000001', '2015-09-07 15:37:44', '');
INSERT INTO `enterprise` VALUES ('134', '公司集团测试data', '测试集团', 'zqc', '15201175465', '2015-09-09 14:49:41', '');

-- ----------------------------
-- Table structure for hospital
-- ----------------------------
DROP TABLE IF EXISTS `hospital`;
CREATE TABLE `hospital` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gw_code` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `area_province` varchar(20) DEFAULT NULL,
  `area_city` varchar(20) DEFAULT NULL,
  `area_region` varchar(20) DEFAULT NULL,
  `create_user` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `enterprise_id` int(10) unsigned DEFAULT NULL,
  `bewrite` varchar(800) DEFAULT NULL COMMENT '医院描述',
  `contactor` varchar(64) DEFAULT NULL COMMENT '医院联系人',
  `contactor_phone` varchar(64) DEFAULT NULL COMMENT '医院联系电话',
  PRIMARY KEY (`id`),
  KEY `index_domain_info_gwCode` (`gw_code`),
  KEY `index_domain_info_areaProvince` (`area_province`),
  KEY `index_domain_info_createDate` (`create_date`),
  KEY `FK_hospital_0` (`enterprise_id`),
  CONSTRAINT `FK_hospital_0` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hospital
-- ----------------------------
INSERT INTO `hospital` VALUES ('32', '010_1', '河北人民医院', '1', '河北', '唐山', '路北区', '25', '2015-03-31 22:39:36', '105', null, null, null);
INSERT INTO `hospital` VALUES ('33', '010_3', '积水潭医院2', '1', '北京', '石景山区', null, '25', '2015-03-31 22:41:18', '105', '', '张全超', '15201175465');
INSERT INTO `hospital` VALUES ('34', '010_5', '北京协和医院', '1', '北京', '西城区', null, '25', '2015-03-31 22:41:57', '110', '', '张全超', '15201175465');
INSERT INTO `hospital` VALUES ('35', '010_6', '协和男科', '1', '北京', '石景山区', null, '25', '2015-04-01 09:45:43', '105', null, null, null);
INSERT INTO `hospital` VALUES ('36', '020_7', '河北肿瘤医院', '1', '河北', '唐山', '路北区', '25', '2015-04-01 09:46:57', '105', null, null, null);
INSERT INTO `hospital` VALUES ('37', '020_8', '河北同仁', '1', '河北', '唐山', '古冶区', '25', '2015-04-01 10:39:55', '109', '', 'zqc', '13211111111');
INSERT INTO `hospital` VALUES ('38', '027_9', '武汉协和医院', '1', '湖北', '武汉', '武昌区', '25', '2015-04-30 09:36:44', '110', null, null, null);
INSERT INTO `hospital` VALUES ('42', '0371_10', '郑州一附院测试', '1', '河南', '郑州', '管城区', '0', '2015-08-12 16:59:23', '102', '医院管理员测试', 'zqc', '15201175465');
INSERT INTO `hospital` VALUES ('43', '0372', '集团2医院', '1', '北京', null, null, '25', '2015-08-17 14:51:35', '104', null, null, null);
INSERT INTO `hospital` VALUES ('44', '010_11', 'zqc医院', '1', '山西', '阳泉', '矿区', '25', '2015-08-26 15:29:46', '105', '111', '张全超', '15201175465');
INSERT INTO `hospital` VALUES ('45', '020_12', 'zqc集团下医院', '1', '内蒙古', '乌海', '乌达区', '25', '2015-08-26 15:34:22', '108', '撒', '张全超', '15201175465');
INSERT INTO `hospital` VALUES ('46', '023_13', '没有集团', '1', '北京', '西城区', null, '25', '2015-08-31 10:08:32', null, '', 'zqc', '15201175465');
INSERT INTO `hospital` VALUES ('47', '0371_14', '华西user测试3', '1', '北京', '东城区', null, '516', '2015-09-06 15:54:41', '102', '', '张全超', '15201175465');
INSERT INTO `hospital` VALUES ('48', '028_15', '成都协和医院', '1', '四川', '成都', '金牛区', '25', '2015-09-06 18:01:01', '110', '', 'xingxing', '13211111111');
INSERT INTO `hospital` VALUES ('49', '020_16', '广州协和医院', '1', '广东', '广州', '白云区', '238', '2015-09-07 10:48:26', '110', 'ss', 'xx', 'xx');
INSERT INTO `hospital` VALUES ('50', '0871_17', '昆明协和医院', '1', '云南', '昆明', '盘龙区', '238', '2015-09-07 10:49:29', '110', 'aa', 'aa', 'aa');
INSERT INTO `hospital` VALUES ('51', '021_18', '上海协和医院', '1', '上海', '黄浦区', null, '238', '2015-09-07 10:50:24', '110', 'shh', 'shh', 'shh');
INSERT INTO `hospital` VALUES ('52', '0591_19', '福州协和医院', '1', '福建', '福州', '鼓楼区', '238', '2015-09-07 15:31:52', '110', '', 'fz', 'fz');
INSERT INTO `hospital` VALUES ('53', '0571_20', '杭州协和医院', '1', '浙江', '杭州', '西湖区', '238', '2015-09-07 15:33:34', '110', '', 'hz', 'hz');
INSERT INTO `hospital` VALUES ('54', '025_21', '南京协和医院', '1', '江苏', '南京', '玄武区', '238', '2015-09-07 15:34:24', '110', 'nj', 'nj', 'nj');
INSERT INTO `hospital` VALUES ('56', 'shl_23', '双流卫生院', '1', '四川', '成都', '双流县', '25', '2015-09-08 10:45:12', '111', '', 'shl', '13211112222');
INSERT INTO `hospital` VALUES ('57', 'px_24', '郫县卫生站', '1', '四川', '成都', '郫县', '25', '2015-09-08 10:46:13', '111', 'px', 'px', '13111112222');
INSERT INTO `hospital` VALUES ('58', 'wjx_25', '文井乡卫生站', '1', '四川', '成都', '双流县', '25', '2015-09-08 10:48:14', '111', '', 'wjx', '13311111111');
INSERT INTO `hospital` VALUES ('59', '000_26', '翼展医院', '1', '北京', '朝阳区', null, '25', '2015-09-08 11:02:38', '111', '', 'yzh', '13311111111');
INSERT INTO `hospital` VALUES ('69', '010_27', '朝外soho办公室', '1', '北京', '朝阳区', null, '25', '2015-09-09 14:36:35', '134', '', 'zqc', '15201175465');


-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(10) DEFAULT NULL,
  `leader_id` int(10) unsigned DEFAULT NULL,
  `hospital_id` int(10) unsigned NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_group_0` (`leader_id`),
  KEY `FK_group_1` (`hospital_id`),
  CONSTRAINT `FK_group_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  CONSTRAINT `FK_group_0` FOREIGN KEY (`leader_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200068 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('200003', 'SS-1', '75', '38', 'ss-group-1');
INSERT INTO `group` VALUES ('200009', 'XH-1', '66', '38', 'xh-group-1');
INSERT INTO `group` VALUES ('200011', 'TT-1', '66', '38', 'TT-group-1');
INSERT INTO `group` VALUES ('200012', 'mx的小组1', '26', '34', '我的小组啊组，1啊1！');
INSERT INTO `group` VALUES ('200013', 'mx的小组2', '26', '34', '斯蒂芬斯蒂芬');
INSERT INTO `group` VALUES ('200014', 'mx的小组3', '409', '38', '我有3个小组了。。。鼓掌');
INSERT INTO `group` VALUES ('200015', 'mx的北京协和小组1', '26', '34', 'mx的北京协和小组1');
INSERT INTO `group` VALUES ('200016', '测试小组', '515', '42', '描述内容');
INSERT INTO `group` VALUES ('200017', '大猩猩CT组', '26', '34', '');
INSERT INTO `group` VALUES ('200018', '成都协和CT组', '66', '48', '');
INSERT INTO `group` VALUES ('200019', '翼展CT组', '523', '59', '');
INSERT INTO `group` VALUES ('200020', '翼展MR组', '523', '59', '');
INSERT INTO `group` VALUES ('200021', '翼展X-RAY组', '523', '59', '');
INSERT INTO `group` VALUES ('200032', 'zqc朝外组', '533', '69', '');
INSERT INTO `group` VALUES ('200033', '测试朝外组', '533', '69', '');
INSERT INTO `group` VALUES ('200034', '朝外测试组', '533', '69', '');
INSERT INTO `group` VALUES ('200040', 'X-ray组', '542', '43', 'sdf松岛枫松岛枫sdf');
INSERT INTO `group` VALUES ('200041', 'Mr组', '542', '43', '司法岛');
INSERT INTO `group` VALUES ('200042', '福州Ct组', '66', '48', '');

-- ----------------------------
-- Table structure for casePool
-- ----------------------------
DROP TABLE IF EXISTS `casePool`;
CREATE TABLE `casePool` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `case_uid` int(10) unsigned DEFAULT NULL,
  `submit_user_id` int(10) unsigned DEFAULT NULL,
  `service_user_id` int(10) unsigned DEFAULT NULL,
  `report_user_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL,
  `report_time` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `allocation_date` datetime DEFAULT NULL,
  `confirm_date` datetime DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `action` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '处理结果 1：新上传；2：已分配；3：未分配',
  `hospital_id` int(10) unsigned NOT NULL,
  `lock_user` int(11) DEFAULT NULL,
  `gateway_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_report_case_case_uid` (`case_uid`),
  KEY `index_report_case_submit_user_id` (`submit_user_id`),
  KEY `index_report_case_report_user_id` (`report_user_id`),
  KEY `index_report_case_update_date` (`update_date`),
  KEY `index_report_case_patient_id` (`patient_id`),
  KEY `index_report_case_isnew` (`action`),
  KEY `FK_casePool_0` (`hospital_id`),
  CONSTRAINT `FK_casePool_0` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casePool
-- ----------------------------
INSERT INTO `casePool` VALUES ('1', '600002', '61', '22', null, 'zqc身体检查0', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('2', '600003', '61', '22', null, 'zqc身体检查1', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('3', '600004', '61', '22', null, 'zqc身体检查2', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('4', '600005', '61', '22', null, 'zqc身体检查3', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('5', '600006', '61', '22', '62', 'zqc身体检查4', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('6', '600007', '61', '22', '62', 'zqc身体检查5', '2015-02-05 11:40:26', '2015-04-15 14:19:35', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('7', '600008', '61', '22', '62', 'zqc身体检查6', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('8', '600009', '61', '22', null, 'zqc身体检查7', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('9', '600010', '61', '22', null, 'zqc身体检查8', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('10', '600011', '61', '22', '62', 'zqc身体检查9', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('11', '600012', '61', '22', null, 'zqc身体检查10', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('12', '600013', '61', '22', '62', 'zqc身体检查11', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('13', '600014', '75', '22', '85', 'zqc身体检查12', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('14', '600015', '61', '22', null, 'zqc身体检查13', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('15', '600016', '61', '22', null, 'zqc身体检查14', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('16', '600017', '61', '22', null, 'zqc身体检查15', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '1', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('17', '600018', '61', '22', '59', 'zqc身体检查16', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('18', '600019', '61', '22', '59', 'zqc身体检查17', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19', '600020', '61', '22', '62', 'zqc身体检查18', '2015-02-05 11:40:26', '2015-04-15 11:44:17', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('20', '600021', '61', '22', '62', 'zqc身体检查19', '2015-02-05 11:40:26', '2015-04-10 10:51:37', '4', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-04-07 17:14:15', '2015-04-15 16:06:27', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('21', '600022', '61', '22', '62', 'zqc身体检查20', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('22', '600023', '61', '22', '62', 'zqc身体检查21', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('23', '600024', '61', '22', '62', 'zqc身体检查22', '2015-02-05 11:40:26', '2015-04-23 18:09:49', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('24', '600025', '61', '22', '62', 'zqc身体检查23', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('25', '600026', '61', '22', '62', 'zqc身体检查24', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('26', '600027', '61', '22', '62', 'zqc身体检查25', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('27', '600028', '61', '22', '62', 'zqc身体检查26', '2015-02-05 11:40:26', '2015-03-24 15:41:49', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:04:56', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('28', '600029', '61', '22', '62', 'zqc身体检查27', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29', '600030', '61', '22', '62', 'zqc身体检查28', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('30', '600031', '61', '22', '62', 'zqc身体检查29', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('31', '600032', '61', '22', '62', 'zqc身体检查30', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('32', '600033', '61', '22', '62', 'zqc身体检查31', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('33', '600034', '61', '22', '62', 'zqc身体检查32', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34', '600035', '61', '22', '62', 'zqc身体检查33', '2015-02-05 11:40:26', '2015-03-23 15:11:21', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('35', '600036', '61', '22', '62', 'zqc身体检查34', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('36', '600037', '61', '22', '62', 'zqc身体检查35', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('37', '600038', '61', '22', '62', 'zqc身体检查36', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('38', '600039', '61', '22', '62', 'zqc身体检查37', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('39', '600040', '61', '22', '62', 'zqc身体检查38', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '2', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('40', '600041', '61', '22', '62', 'zqc身体检查39', '2015-02-05 11:40:26', '2015-03-23 15:23:41', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('41', '600042', '61', '22', '62', 'zqc身体检查40', '2015-02-05 11:40:26', '2015-03-24 11:19:15', '4', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-25 15:06:00', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('42', '600043', '61', '22', '62', 'zqc身体检查41', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('43', '600044', '61', '22', '62', 'zqc身体检查42', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('44', '600045', '61', '22', '62', 'zqc身体检查43', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('45', '600046', '61', '22', '62', 'zqc身体检查44', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('46', '600047', '61', '22', '62', 'zqc身体检查45', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('47', '600048', '61', '22', '62', 'zqc身体检查46', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('48', '600049', '61', '22', '62', 'zqc身体检查47', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-25 15:05:04', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('49', '600050', '61', '22', '62', 'zqc身体检查48', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('50', '600051', '61', '22', '62', 'zqc身体检查49', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('51', '600052', '61', '22', '62', 'zqc身体检查50', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('52', '600053', '61', '22', '62', 'zqc身体检查51', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('53', '600054', '61', '22', '62', 'zqc身体检查52', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('54', '600055', '61', '22', '62', 'zqc身体检查53', '2015-02-05 11:40:26', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:26', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('55', '600056', '61', '22', '62', 'zqc身体检查54', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('56', '600057', '61', '22', '62', 'zqc身体检查55', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('57', '600058', '61', '22', '62', 'zqc身体检查56', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('58', '600059', '61', '22', '62', 'zqc身体检查57', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('59', '600060', '61', '22', '62', 'zqc身体检查58', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('60', '600061', '61', '22', '62', 'zqc身体检查59', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('61', '600062', '61', '22', '62', 'zqc身体检查40', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('62', '600063', '61', '22', '62', 'zqc身体检查41', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('63', '600064', '61', '22', '62', 'zqc身体检查42', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('64', '600065', '61', '22', '62', 'zqc身体检查43', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('65', '600066', '61', '22', '62', 'zqc身体检查44', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('66', '600067', '61', '22', '62', 'zqc身体检查45', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('67', '600068', '61', '22', '62', 'zqc身体检查46', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('68', '600069', '61', '22', '62', 'zqc身体检查47', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('69', '600070', '61', '22', '62', 'zqc身体检查48', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('70', '600071', '61', '22', '62', 'zqc身体检查49', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('71', '600072', '61', '22', '62', 'zqc身体检查50', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('72', '600073', '61', '22', '62', 'zqc身体检查51', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('73', '600074', '61', '22', '62', 'zqc身体检查52', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('74', '600075', '61', '22', '62', 'zqc身体检查53', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('75', '600076', '61', '22', '62', 'zqc身体检查54', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('76', '600077', '61', '22', '75', 'zqc身体检查55', '2015-02-05 11:40:27', '2015-03-23 12:04:44', '2', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('77', '600078', '61', '22', '62', 'zqc身体检查56', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('78', '600079', '61', '22', '62', 'zqc身体检查57', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('79', '600080', '61', '22', '62', 'zqc身体检查58', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '3', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('80', '600081', '61', '22', '62', 'zqc身体检查59', '2015-02-05 11:40:27', '2015-03-23 11:19:25', '4', '2015-02-05 11:40:27', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4646', '704647', '61', '22', null, 'zqc脸部检查0', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4647', '704648', '61', '22', null, 'zqc脸部检查1', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4648', '704649', '61', '22', null, 'zqc脸部检查2', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4649', '704650', '61', '22', '62', 'zqc脸部检查3', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '2', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4650', '704651', '61', '22', '62', 'zqc脸部检查4', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '2', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4651', '704652', '61', '22', null, 'zqc脸部检查5', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4652', '704653', '61', '22', null, 'zqc脸部检查6', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4653', '704654', '61', '22', '78', 'zqc脸部检查7', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '4', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4655', '704656', '61', '22', '78', 'zqc脸部检查9', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '2', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4656', '704657', '61', '22', '234', 'zqc脸部检查10', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '2', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-04-07 16:42:39', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4658', '704659', '61', '22', '78', 'zqc脸部检查12', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '3', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4659', '704660', '61', '22', null, 'zqc脸部检查13', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4660', '704671', '22', '22', '62', 'zqc脸部检查14', '2015-04-07 06:23:01', '2015-03-23 11:19:25', '4', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4661', '704662', '61', '22', '62', 'zqc脸部检查15', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '2', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4662', '704663', '61', '22', null, 'zqc脸部检查16', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4663', '704664', '61', '22', '78', 'zqc脸部检查17', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '3', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4664', '704665', '61', '22', null, 'zqc脸部检查18', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4665', '704666', '61', '22', null, 'zqc脸部检查19', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4666', '704667', '61', '22', null, 'zqc脸部检查20', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4667', '704668', '61', '22', '75', 'zqc脸部检查21', '2015-03-19 09:36:18', '2015-03-23 11:19:25', '3', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('4668', '704669', '61', '22', null, 'zqc脸部检查22', '2015-03-12 13:25:34', '2015-03-23 11:19:25', '1', '2015-03-12 13:25:34', '2015-05-04 11:46:22', '2015-03-25 15:11:23', '2015-03-23 15:39:48', null, '1', '48', '0', '0');
INSERT INTO `casePool` VALUES ('9757', '100015', '22', '22', null, null, '2015-03-02 00:00:00', null, '1', '2015-03-23 18:06:14', '2015-05-04 11:46:22', '2015-03-25 15:11:23', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('9758', '100016', '22', '22', '62', null, '2015-03-02 00:00:00', '2015-07-31 14:42:30', '2', '2015-03-23 18:06:47', '2015-07-31 14:43:15', '2015-03-25 15:11:23', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('11859', '100017', '22', '22', null, null, '2015-03-02 00:00:00', null, '1', '2015-03-26 14:18:19', '2015-05-04 11:46:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('11860', '100018', '22', '22', null, null, '2015-03-02 00:00:00', null, '1', '2015-03-26 14:21:11', '2015-05-04 11:46:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('12176', '100019', '61', '22', '234', null, '2015-03-02 00:00:00', null, '2', '2015-03-31 10:32:06', '2015-05-04 11:46:22', '2015-04-03 09:52:32', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('14849', '100020', '22', '22', null, null, '2015-03-02 00:00:00', null, '1', '2015-04-03 18:42:02', '2015-05-04 11:46:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('14850', '100021', '22', '22', null, null, '2015-03-02 00:00:00', null, '1', '2015-04-03 18:42:21', '2015-05-04 11:46:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('14851', '100022', '22', '22', null, null, '2015-03-02 00:00:00', null, '1', '2015-04-03 18:42:22', '2015-05-04 11:46:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('14957', '100023', '22', '22', null, null, '2015-04-07 01:52:05', null, '1', '2015-04-07 02:03:56', '2015-05-04 11:46:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('14958', '100024', '22', '22', null, null, '2015-04-07 02:51:59', null, '1', '2015-04-07 04:37:06', '2015-05-04 11:46:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('15379', '100025', '22', '22', '62', null, '2015-04-07 16:31:23', '2015-04-07 16:58:06', '4', '2015-04-07 16:41:45', '2015-05-04 11:46:22', '2015-04-07 16:45:43', '2015-04-07 16:58:17', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('16535', '100026', '22', '22', '234', null, '2015-04-08 12:35:52', null, '2', '2015-04-08 12:46:16', '2015-05-04 11:46:22', '2015-04-10 10:51:29', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19581', '100027', '22', '22', null, null, '2015-04-10 16:34:23', null, '1', '2015-04-10 16:45:18', '2015-05-04 11:46:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19601', '100028', '22', '22', '75', null, '2015-04-11 17:06:53', null, '2', '2015-04-10 17:15:30', '2015-05-04 11:46:22', '2015-04-23 14:56:37', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19812', '100029', '22', '22', '75', null, '2015-04-11 18:00:17', null, '2', '2015-04-11 18:10:47', '2015-05-15 10:27:07', '2015-05-15 10:27:07', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19820', '100030', '22', '22', '62', null, '2015-04-11 20:02:48', '2015-04-11 19:42:55', '4', '2015-04-11 19:27:15', '2015-05-04 11:46:22', '2015-04-11 19:42:14', '2015-04-11 19:43:10', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19821', '100031', '22', '22', '75', null, '2015-04-13 10:31:01', null, '2', '2015-04-13 10:41:25', '2015-05-04 11:46:22', '2015-04-23 14:47:39', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19822', '100032', '22', '22', '62', null, '2015-04-13 10:51:55', '2015-04-13 11:30:16', '4', '2015-04-13 11:02:12', '2015-05-04 11:46:22', '2015-04-13 11:28:41', '2015-04-13 11:30:43', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19826', '100033', '22', '22', '62', null, '2015-04-13 13:35:39', '2015-04-13 14:19:57', '4', '2015-04-13 13:46:00', '2015-05-04 11:46:22', '2015-04-13 14:19:12', '2015-04-13 14:20:20', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19827', '100034', '22', '22', '62', null, '2015-04-13 13:59:16', '2015-04-13 14:40:34', '4', '2015-04-13 14:03:08', '2015-05-04 11:46:22', '2015-04-13 14:39:23', '2015-04-13 14:41:01', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19828', '100035', '22', '22', '234', null, '2015-04-13 14:05:54', null, '2', '2015-04-13 14:16:19', '2015-05-04 11:46:22', '2015-04-21 13:47:30', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19829', '100036', '22', '22', '62', null, '2015-04-13 14:54:39', '2015-04-13 15:09:35', '4', '2015-04-13 15:05:02', '2015-05-04 11:46:22', '2015-04-13 15:09:05', '2015-04-13 15:09:44', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('19830', '100037', '22', '22', '62', null, '2015-04-13 15:12:19', '2015-07-31 14:43:49', '2', '2015-04-13 15:22:38', '2015-07-31 14:44:01', '2015-04-15 16:05:52', null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('28546', '100038', '61', '22', null, null, '2015-05-13 16:48:15', null, '1', '2015-05-07 12:39:05', '2015-05-07 13:00:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('28547', '100039', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-07 12:45:50', '2015-05-07 13:00:22', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29073', '100040', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-08 09:11:30', '2015-05-08 09:50:26', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29179', '100041', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-08 14:03:10', '2015-05-09 00:40:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29285', '100042', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-08 14:22:49', '2015-05-09 00:40:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29391', '100043', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-08 15:08:10', '2015-05-09 00:40:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29497', '100044', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-09 01:01:41', '2015-05-09 01:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29603', '100045', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-09 01:03:20', '2015-05-09 01:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29709', '100046', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-11 17:37:53', '2015-05-11 18:00:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29815', '100047', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-12 01:00:20', '2015-05-12 01:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('29921', '100048', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-12 01:01:58', '2015-05-12 01:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('30027', '100049', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-12 16:46:55', '2015-05-12 17:00:01', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('30028', '100050', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-12 16:58:33', '2015-05-12 17:20:01', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('30029', '100051', '61', '22', null, null, '2015-05-14 16:48:15', null, '1', '2015-05-12 17:04:33', '2015-05-12 17:20:01', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34482', '100052', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 17:49:56', '2015-06-02 18:00:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34483', '100053', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 18:08:50', '2015-06-02 18:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34484', '100054', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 18:09:26', '2015-06-02 18:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34485', '100055', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 18:12:51', '2015-06-02 18:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34486', '100056', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 18:14:46', '2015-06-02 18:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34487', '100057', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 18:19:11', '2015-06-02 18:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34488', '100058', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 18:20:06', '2015-06-02 18:40:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34489', '100059', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 18:38:28', '2015-06-02 18:40:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34490', '100060', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 18:41:55', '2015-06-02 19:00:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34491', '100061', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 18:42:30', '2015-06-02 19:00:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34492', '100062', '61', '22', null, 'ssssss', '2015-04-25 17:52:12', null, '1', '2015-06-02 18:52:56', '2015-09-14 18:12:40', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34493', '100063', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-02 19:07:21', '2015-06-02 19:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34494', '100064', '61', '22', null, null, '2015-04-25 17:52:12', null, '1', '2015-06-03 11:27:33', '2015-06-03 11:40:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34495', '100065', '61', '22', null, null, '2015-06-03 14:23:46', null, '1', '2015-06-03 14:35:43', '2015-06-03 14:40:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34496', '100066', '61', '22', null, null, '2015-06-03 14:54:20', null, '1', '2015-06-03 15:05:32', '2015-06-03 15:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34497', '100067', '61', '22', null, null, '2015-06-03 14:59:00', null, '1', '2015-06-03 15:09:54', '2015-06-03 15:20:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34498', '100068', '61', '22', null, null, '2015-06-03 15:12:15', null, '1', '2015-06-03 15:23:15', '2015-06-03 15:40:00', null, null, null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34499', '100069', '61', '22', '62', null, '2015-06-09 09:09:35', '2015-08-04 10:36:59', '4', '2015-06-03 15:58:49', '2015-08-04 10:40:11', '2015-08-04 10:33:49', '2015-08-04 10:40:11', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34924', '100070', '61', '22', '62', null, '2015-06-09 09:09:35', '2015-06-10 14:26:48', '4', '2015-06-09 11:06:15', '2015-06-10 14:27:06', '2015-06-10 14:26:05', '2015-06-10 14:27:06', null, '1', '42', '0', '0');
INSERT INTO `casePool` VALUES ('34925', '100071', '61', '22', '62', null, '2015-06-09 09:09:35', '2015-06-11 16:49:10', '4', '2015-06-11 15:59:53', '2015-06-11 16:49:42', '2015-06-11 16:48:44', '2015-06-11 16:49:42', null, '1', '42', '0', '0');

-- ----------------------------
-- Table structure for casePool_group
-- ----------------------------
DROP TABLE IF EXISTS `casePool_group`;
CREATE TABLE `casePool_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `case_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `applied_rule_id` int(10) unsigned DEFAULT NULL,
  `batch` char(12) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_CASE_GROUP` (`case_id`,`group_id`),
  KEY `FK_casePool_group_1` (`group_id`),
  KEY `FK_casePool_group_2` (`applied_rule_id`),
  CONSTRAINT `FK_casePool_group_2` FOREIGN KEY (`applied_rule_id`) REFERENCES `assignRule` (`id`),
  CONSTRAINT `FK_casePool_group_0` FOREIGN KEY (`case_id`) REFERENCES `casePool` (`id`),
  CONSTRAINT `FK_casePool_group_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casePool_group
-- ----------------------------

-- ----------------------------
-- Table structure for casePool_hospital
-- ----------------------------
DROP TABLE IF EXISTS `casePool_hospital`;
CREATE TABLE `casePool_hospital` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hospital_id` int(10) unsigned NOT NULL,
  `case_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `applied_rule_id` int(10) unsigned DEFAULT NULL,
  `batch` char(12) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_HOSPITAL_CASE` (`hospital_id`,`case_id`),
  KEY `FK_casePool_hospital_1` (`case_id`),
  KEY `FK_casePool_hospital_2` (`applied_rule_id`),
  CONSTRAINT `FK_casePool_hospital_2` FOREIGN KEY (`applied_rule_id`) REFERENCES `assignRule` (`id`),
  CONSTRAINT `FK_casePool_hospital_0` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  CONSTRAINT `FK_casePool_hospital_1` FOREIGN KEY (`case_id`) REFERENCES `casePool` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casePool_hospital
-- ----------------------------

-- ----------------------------
-- Table structure for casePool_personal
-- ----------------------------
DROP TABLE IF EXISTS `casePool_personal`;
CREATE TABLE `casePool_personal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `case_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT NULL,
  `applied_rule_id` int(10) unsigned DEFAULT NULL,
  `assigner_id` int(10) unsigned DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_CASE_USER` (`case_id`,`user_id`),
  KEY `FK_casePool_personal_1` (`user_id`),
  KEY `FK_casePool_personal_2` (`applied_rule_id`),
  KEY `FK_casePool_personal_3` (`assigner_id`),
  CONSTRAINT `FK_casePool_personal_0` FOREIGN KEY (`case_id`) REFERENCES `casePool` (`id`),
  CONSTRAINT `FK_casePool_personal_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_casePool_personal_2` FOREIGN KEY (`applied_rule_id`) REFERENCES `assignRule` (`id`),
  CONSTRAINT `FK_casePool_personal_3` FOREIGN KEY (`assigner_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casePool_personal
-- ----------------------------


-- ----------------------------
-- Table structure for request_procedure
-- ----------------------------
DROP TABLE IF EXISTS `request_procedure`;
CREATE TABLE `request_procedure` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(64) DEFAULT NULL,
  `modality` varchar(64) DEFAULT NULL,
  `method` varchar(64) DEFAULT NULL,
  `bodyPart` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `case_uid` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_request_procedure_case_uid` (`case_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=43201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of request_procedure
-- ----------------------------
INSERT INTO `request_procedure` VALUES ('2', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600002');
INSERT INTO `request_procedure` VALUES ('3', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600003');
INSERT INTO `request_procedure` VALUES ('4', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600004');
INSERT INTO `request_procedure` VALUES ('5', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600005');
INSERT INTO `request_procedure` VALUES ('6', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600006');
INSERT INTO `request_procedure` VALUES ('7', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600007');
INSERT INTO `request_procedure` VALUES ('8', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600008');
INSERT INTO `request_procedure` VALUES ('9', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600009');
INSERT INTO `request_procedure` VALUES ('10', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600010');
INSERT INTO `request_procedure` VALUES ('11', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600011');
INSERT INTO `request_procedure` VALUES ('12', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600012');
INSERT INTO `request_procedure` VALUES ('13', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600013');
INSERT INTO `request_procedure` VALUES ('14', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600014');
INSERT INTO `request_procedure` VALUES ('15', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600015');
INSERT INTO `request_procedure` VALUES ('16', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600016');
INSERT INTO `request_procedure` VALUES ('17', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600017');
INSERT INTO `request_procedure` VALUES ('18', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600018');
INSERT INTO `request_procedure` VALUES ('19', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600019');
INSERT INTO `request_procedure` VALUES ('20', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600020');
INSERT INTO `request_procedure` VALUES ('21', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600021');
INSERT INTO `request_procedure` VALUES ('22', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600022');
INSERT INTO `request_procedure` VALUES ('23', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600023');
INSERT INTO `request_procedure` VALUES ('24', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600024');
INSERT INTO `request_procedure` VALUES ('25', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600025');
INSERT INTO `request_procedure` VALUES ('26', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600026');
INSERT INTO `request_procedure` VALUES ('27', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600027');
INSERT INTO `request_procedure` VALUES ('28', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600028');
INSERT INTO `request_procedure` VALUES ('29', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600029');
INSERT INTO `request_procedure` VALUES ('30', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600030');
INSERT INTO `request_procedure` VALUES ('31', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600031');
INSERT INTO `request_procedure` VALUES ('32', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600032');
INSERT INTO `request_procedure` VALUES ('33', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600033');
INSERT INTO `request_procedure` VALUES ('34', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600034');
INSERT INTO `request_procedure` VALUES ('35', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600035');
INSERT INTO `request_procedure` VALUES ('36', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600036');
INSERT INTO `request_procedure` VALUES ('37', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600037');
INSERT INTO `request_procedure` VALUES ('38', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600038');
INSERT INTO `request_procedure` VALUES ('39', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600039');
INSERT INTO `request_procedure` VALUES ('40', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600040');
INSERT INTO `request_procedure` VALUES ('41', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600041');
INSERT INTO `request_procedure` VALUES ('42', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600042');
INSERT INTO `request_procedure` VALUES ('43', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600043');
INSERT INTO `request_procedure` VALUES ('44', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600044');
INSERT INTO `request_procedure` VALUES ('45', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600045');
INSERT INTO `request_procedure` VALUES ('46', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600046');
INSERT INTO `request_procedure` VALUES ('47', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600047');
INSERT INTO `request_procedure` VALUES ('48', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600048');
INSERT INTO `request_procedure` VALUES ('49', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600049');
INSERT INTO `request_procedure` VALUES ('50', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600050');
INSERT INTO `request_procedure` VALUES ('51', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600051');
INSERT INTO `request_procedure` VALUES ('52', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600052');
INSERT INTO `request_procedure` VALUES ('53', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600053');
INSERT INTO `request_procedure` VALUES ('54', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600054');
INSERT INTO `request_procedure` VALUES ('55', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:26', '600055');
INSERT INTO `request_procedure` VALUES ('56', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600056');
INSERT INTO `request_procedure` VALUES ('57', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600057');
INSERT INTO `request_procedure` VALUES ('58', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600058');
INSERT INTO `request_procedure` VALUES ('59', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600059');
INSERT INTO `request_procedure` VALUES ('60', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600060');
INSERT INTO `request_procedure` VALUES ('61', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600061');
INSERT INTO `request_procedure` VALUES ('62', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600062');
INSERT INTO `request_procedure` VALUES ('63', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600063');
INSERT INTO `request_procedure` VALUES ('64', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600064');
INSERT INTO `request_procedure` VALUES ('65', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600065');
INSERT INTO `request_procedure` VALUES ('66', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600066');
INSERT INTO `request_procedure` VALUES ('67', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600067');
INSERT INTO `request_procedure` VALUES ('68', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600068');
INSERT INTO `request_procedure` VALUES ('69', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600069');
INSERT INTO `request_procedure` VALUES ('70', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600070');
INSERT INTO `request_procedure` VALUES ('71', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600071');
INSERT INTO `request_procedure` VALUES ('72', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600072');
INSERT INTO `request_procedure` VALUES ('73', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600073');
INSERT INTO `request_procedure` VALUES ('74', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600074');
INSERT INTO `request_procedure` VALUES ('75', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600075');
INSERT INTO `request_procedure` VALUES ('76', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600076');
INSERT INTO `request_procedure` VALUES ('77', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600077');
INSERT INTO `request_procedure` VALUES ('78', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600078');
INSERT INTO `request_procedure` VALUES ('79', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600079');
INSERT INTO `request_procedure` VALUES ('80', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600080');
INSERT INTO `request_procedure` VALUES ('81', '无明显病变', '胸部平扫', 'X-RAY', '头部和腰间', '2015-02-05 11:40:27', '600081');
INSERT INTO `request_procedure` VALUES ('4647', '无明显病变', 'FSD00010', 'X-RAY', '头部', '2015-03-12 13:25:34', '704647');
INSERT INTO `request_procedure` VALUES ('4648', '无明显病变', 'FSD00011', 'X-RAY', '头部', '2015-03-12 13:25:34', '704648');
INSERT INTO `request_procedure` VALUES ('4649', '无明显病变', 'FSD00012', 'X-RAY', '头部', '2015-03-12 13:25:34', '704649');
INSERT INTO `request_procedure` VALUES ('4650', '无明显病变', 'FSD00013', 'X-RAY', '头部', '2015-03-12 13:25:34', '704650');
INSERT INTO `request_procedure` VALUES ('4651', '无明显病变', 'FSD00014', 'X-RAY', '头部', '2015-03-12 13:25:34', '704651');
INSERT INTO `request_procedure` VALUES ('4652', '无明显病变', 'FSD00015', 'X-RAY', '头部', '2015-03-12 13:25:34', '704652');
INSERT INTO `request_procedure` VALUES ('4653', '无明显病变', 'FSD00016', 'X-RAY', '头部', '2015-03-12 13:25:34', '704653');
INSERT INTO `request_procedure` VALUES ('4654', '无明显病变', 'FSD00017', 'X-RAY', '头部', '2015-03-12 13:25:34', '704654');
INSERT INTO `request_procedure` VALUES ('4655', '无明显病变', 'FSD00018', 'X-RAY', '头部', '2015-03-12 13:25:34', '704655');
INSERT INTO `request_procedure` VALUES ('4656', '无明显病变', 'FSD00019', 'X-RAY', '头部', '2015-03-12 13:25:34', '704656');
INSERT INTO `request_procedure` VALUES ('4657', '无明显病变', 'FSD000110', 'X-RAY', '头部', '2015-03-12 13:25:34', '704657');
INSERT INTO `request_procedure` VALUES ('4658', '无明显病变', 'FSD000111', 'X-RAY', '头部', '2015-03-12 13:25:34', '704658');
INSERT INTO `request_procedure` VALUES ('4659', '无明显病变', 'FSD000112', 'X-RAY', '头部', '2015-03-12 13:25:34', '704659');
INSERT INTO `request_procedure` VALUES ('4660', '无明显病变', 'FSD000113', 'X-RAY', '头部', '2015-03-12 13:25:34', '704660');
INSERT INTO `request_procedure` VALUES ('4661', '无明显病变', 'FSD000114', 'X-RAY', '头部', '2015-03-12 13:25:34', '704661');
INSERT INTO `request_procedure` VALUES ('4662', '无明显病变', 'FSD000115', 'X-RAY', '头部', '2015-03-12 13:25:34', '704662');
INSERT INTO `request_procedure` VALUES ('4663', '无明显病变', 'FSD000116', 'X-RAY', '头部', '2015-03-12 13:25:34', '704663');
INSERT INTO `request_procedure` VALUES ('4664', '无明显病变', 'FSD000117', 'X-RAY', '头部', '2015-03-12 13:25:34', '704664');
INSERT INTO `request_procedure` VALUES ('4665', '无明显病变', 'FSD000118', 'X-RAY', '头部', '2015-03-12 13:25:34', '704665');
INSERT INTO `request_procedure` VALUES ('4666', '无明显病变', 'FSD000119', 'X-RAY', '头部', '2015-03-12 13:25:34', '704666');
INSERT INTO `request_procedure` VALUES ('4667', '无明显病变', 'FSD000120', 'X-RAY', '头部', '2015-03-12 13:25:34', '704667');
INSERT INTO `request_procedure` VALUES ('4668', '无明显病变', 'FSD000121', 'X-RAY', '头部', '2015-03-12 13:25:34', '704668');
INSERT INTO `request_procedure` VALUES ('4669', '无明显病变', 'FSD000122', 'X-RAY', '头部', '2015-03-12 13:25:34', '704669');
INSERT INTO `request_procedure` VALUES ('4671', '', 'CT', '', '', '2015-03-12 13:25:34', '704671');
INSERT INTO `request_procedure` VALUES ('8064', 'CT头颅平扫', 'CT', 'CT平扫2', '头部', '2015-03-20 14:51:05', '100001');
INSERT INTO `request_procedure` VALUES ('8065', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-20 15:52:10', '100002');
INSERT INTO `request_procedure` VALUES ('8486', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-20 18:12:29', '100003');
INSERT INTO `request_procedure` VALUES ('8487', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-20 23:12:27', '100004');
INSERT INTO `request_procedure` VALUES ('8488', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-20 23:12:28', '100005');
INSERT INTO `request_procedure` VALUES ('8489', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-20 23:13:20', '100006');
INSERT INTO `request_procedure` VALUES ('8490', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-20 23:38:14', '100007');
INSERT INTO `request_procedure` VALUES ('8491', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-21 00:47:04', '100008');
INSERT INTO `request_procedure` VALUES ('8702', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-21 16:00:06', '100009');
INSERT INTO `request_procedure` VALUES ('8703', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-21 20:54:31', '100010');
INSERT INTO `request_procedure` VALUES ('8704', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-21 20:54:46', '100011');
INSERT INTO `request_procedure` VALUES ('9125', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-22 20:06:18', '100012');
INSERT INTO `request_procedure` VALUES ('9126', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-22 20:17:09', '100013');
INSERT INTO `request_procedure` VALUES ('9127', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-23 01:29:40', '100014');
INSERT INTO `request_procedure` VALUES ('9762', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-23 18:06:14', '100015');
INSERT INTO `request_procedure` VALUES ('9763', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-23 18:06:47', '100016');
INSERT INTO `request_procedure` VALUES ('11864', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-26 14:18:19', '100017');
INSERT INTO `request_procedure` VALUES ('11865', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-26 14:21:11', '100018');
INSERT INTO `request_procedure` VALUES ('12181', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-03-31 10:32:06', '100019');
INSERT INTO `request_procedure` VALUES ('14854', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-04-03 18:42:02', '100020');
INSERT INTO `request_procedure` VALUES ('14855', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-04-03 18:42:21', '100021');
INSERT INTO `request_procedure` VALUES ('14856', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-04-03 18:42:22', '100022');
INSERT INTO `request_procedure` VALUES ('14962', '', 'CT', '', '', '2015-04-07 02:03:56', '100023');
INSERT INTO `request_procedure` VALUES ('14963', '', 'CT', '', '', '2015-04-07 04:37:06', '100024');
INSERT INTO `request_procedure` VALUES ('15384', '', 'CT', '', '', '2015-04-07 16:41:45', '100025');
INSERT INTO `request_procedure` VALUES ('16540', '', 'MR', '', '', '2015-04-08 12:46:16', '100026');
INSERT INTO `request_procedure` VALUES ('19586', '', 'CT', '', '', '2015-04-10 16:45:18', '100027');
INSERT INTO `request_procedure` VALUES ('19606', '', 'DX', '', 'CSPINE', '2015-04-10 17:15:30', '100028');
INSERT INTO `request_procedure` VALUES ('19817', '', 'CR', '', 'CHEST', '2015-04-11 18:10:47', '100029');
INSERT INTO `request_procedure` VALUES ('19825', '', 'DX', '', 'CSPINE', '2015-04-11 19:27:15', '100030');
INSERT INTO `request_procedure` VALUES ('19826', '', 'CR', '', '', '2015-04-13 10:41:25', '100031');
INSERT INTO `request_procedure` VALUES ('19827', '', 'CR', '', '', '2015-04-13 11:02:12', '100032');
INSERT INTO `request_procedure` VALUES ('19831', '', 'CR', '', '', '2015-04-13 13:46:00', '100033');
INSERT INTO `request_procedure` VALUES ('19832', '', 'CR', '', '', '2015-04-13 14:03:08', '100034');
INSERT INTO `request_procedure` VALUES ('19833', '', 'DX', '', 'ELBOW', '2015-04-13 14:16:19', '100035');
INSERT INTO `request_procedure` VALUES ('19834', '', 'CR', '', '', '2015-04-13 15:05:02', '100036');
INSERT INTO `request_procedure` VALUES ('19835', '', 'CR', '', '', '2015-04-13 15:22:38', '100037');
INSERT INTO `request_procedure` VALUES ('28551', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-05-07 12:39:05', '100038');
INSERT INTO `request_procedure` VALUES ('28552', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-05-07 12:45:50', '100039');
INSERT INTO `request_procedure` VALUES ('29078', 'CT头颅平扫', 'CT', 'CT平扫', '头部', '2015-05-08 09:11:30', '100040');
INSERT INTO `request_procedure` VALUES ('29184', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-08 14:03:10', '100041');
INSERT INTO `request_procedure` VALUES ('29290', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-08 14:22:49', '100042');
INSERT INTO `request_procedure` VALUES ('29396', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-08 15:08:10', '100043');
INSERT INTO `request_procedure` VALUES ('29502', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-09 01:01:41', '100044');
INSERT INTO `request_procedure` VALUES ('29608', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-09 01:03:20', '100045');
INSERT INTO `request_procedure` VALUES ('29714', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-11 17:37:53', '100046');
INSERT INTO `request_procedure` VALUES ('29820', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-12 01:00:20', '100047');
INSERT INTO `request_procedure` VALUES ('29926', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-12 01:01:58', '100048');
INSERT INTO `request_procedure` VALUES ('30032', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-12 16:46:55', '100049');
INSERT INTO `request_procedure` VALUES ('30033', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-12 16:58:33', '100050');
INSERT INTO `request_procedure` VALUES ('30034', 'CT头颅平扫', 'ct', 'CT平扫', '头部', '2015-05-12 17:04:33', '100051');
INSERT INTO `request_procedure` VALUES ('34487', '', 'DX', '', 'HAND', '2015-06-02 17:49:56', '100052');
INSERT INTO `request_procedure` VALUES ('34488', '', 'DX', '', 'HAND', '2015-06-02 18:08:50', '100053');
INSERT INTO `request_procedure` VALUES ('34489', '', 'DX', '', 'HAND', '2015-06-02 18:09:26', '100054');
INSERT INTO `request_procedure` VALUES ('34490', '', 'DX', '', 'HAND', '2015-06-02 18:12:51', '100055');
INSERT INTO `request_procedure` VALUES ('34491', '', 'DX', '', 'HAND', '2015-06-02 18:14:46', '100056');
INSERT INTO `request_procedure` VALUES ('34492', '', 'DX', '', 'HAND', '2015-06-02 18:19:11', '100057');
INSERT INTO `request_procedure` VALUES ('34493', '', 'DX', '', 'HAND', '2015-06-02 18:20:06', '100058');
INSERT INTO `request_procedure` VALUES ('34494', '', 'DX', '', 'HAND', '2015-06-02 18:38:28', '100059');
INSERT INTO `request_procedure` VALUES ('34495', '', 'DX', '', 'HAND', '2015-06-02 18:41:55', '100060');
INSERT INTO `request_procedure` VALUES ('34496', '', 'DX', '', 'HAND', '2015-06-02 18:42:30', '100061');
INSERT INTO `request_procedure` VALUES ('34497', '', 'DX', '', 'HAND', '2015-06-02 18:52:56', '100062');
INSERT INTO `request_procedure` VALUES ('34498', '', 'DX', '', 'HAND', '2015-06-02 19:07:21', '100063');
INSERT INTO `request_procedure` VALUES ('34499', '', 'DX', '', 'HAND', '2015-06-03 11:27:33', '100064');
INSERT INTO `request_procedure` VALUES ('34500', '', 'DX', '', 'CHEST', '2015-06-03 14:35:43', '100065');
INSERT INTO `request_procedure` VALUES ('34501', '', 'DX', '', 'CHEST', '2015-06-03 15:05:32', '100066');
INSERT INTO `request_procedure` VALUES ('34502', '', 'DX', '', 'CHEST', '2015-06-03 15:09:54', '100067');
INSERT INTO `request_procedure` VALUES ('34503', '', 'DX', '', 'CHEST', '2015-06-03 15:23:15', '100068');
INSERT INTO `request_procedure` VALUES ('34504', '', 'DX', '', 'CHEST', '2015-06-03 15:58:49', '100069');
INSERT INTO `request_procedure` VALUES ('34929', '', 'DX', '', 'CHEST', '2015-06-09 11:06:15', '100070');
INSERT INTO `request_procedure` VALUES ('34930', '', 'DX', '', 'CHEST', '2015-06-11 15:59:53', '100071');
