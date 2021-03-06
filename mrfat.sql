/*
Navicat MySQL Data Transfer

Source Server         : 192.168.2.2
Source Server Version : 50553
Source Host           : 192.168.2.2:3306
Source Database       : mrfat

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-18 09:50:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ec_admininfo`
-- ----------------------------
DROP TABLE IF EXISTS `ec_admininfo`;
CREATE TABLE `ec_admininfo` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(50) DEFAULT NULL COMMENT '管理员账号',
  `password` varchar(50) DEFAULT NULL COMMENT '管理员密码',
  `adminrole` int(11) DEFAULT '0' COMMENT '角色',
  `phone` varchar(15) DEFAULT NULL COMMENT '管理员电话号码',
  `realname` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `isable` tinyint(4) DEFAULT '1' COMMENT '状态，1启用，0禁用',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='系统平台管理员表';

-- ----------------------------
-- Records of ec_admininfo
-- ----------------------------
INSERT INTO `ec_admininfo` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '13333333333', '管理员', '1');
INSERT INTO `ec_admininfo` VALUES ('2', '1stmoon', '4c7c53955d28291e41e7801ffd4b5411', '2', '13445564657', '张三', '2');
INSERT INTO `ec_admininfo` VALUES ('3', 'default', 'e10adc3949ba59abbe56e057f20f883e', '2', '13333333333', '䮻缶', '1');
INSERT INTO `ec_admininfo` VALUES ('4', '马龙123', 'e10adc3949ba59abbe56e057f20f883e', '1', '13222222222', '22', '1');

-- ----------------------------
-- Table structure for `ec_adminmenu`
-- ----------------------------
DROP TABLE IF EXISTS `ec_adminmenu`;
CREATE TABLE `ec_adminmenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `menu_name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `menu_fatherid` int(11) DEFAULT '0' COMMENT '菜单级别，三层，顶级为0，其他fid',
  `controller` varchar(50) DEFAULT NULL COMMENT '控制器名，小写',
  `action` varchar(50) DEFAULT NULL COMMENT '方法名，小写',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `menu_type` tinyint(4) DEFAULT '0' COMMENT '菜单类型，1菜单，2操作',
  `menu_icon` varchar(50) DEFAULT NULL COMMENT '菜单图标样式',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='管理员菜单表';

-- ----------------------------
-- Records of ec_adminmenu
-- ----------------------------
INSERT INTO `ec_adminmenu` VALUES ('1', '系统管理', '0', 'system', 'index', '0', '1', 'icon-shezhi');
INSERT INTO `ec_adminmenu` VALUES ('2', '管理员设置', '1', 'admininfo', 'index', '1', '1', null);
INSERT INTO `ec_adminmenu` VALUES ('3', '管理员列表', '2', 'admininfo', 'index', '0', '1', null);
INSERT INTO `ec_adminmenu` VALUES ('4', '管理员添加', '3', 'admininfo', 'addadmin', '0', '2', null);
INSERT INTO `ec_adminmenu` VALUES ('5', '管理员删除', '3', 'admininfo', 'deladmin', '0', '2', null);
INSERT INTO `ec_adminmenu` VALUES ('6', '重置密码', '3', 'admininfo', 'repasswrod', '0', '2', null);
INSERT INTO `ec_adminmenu` VALUES ('7', '其他设置', '1', 'index', 'index', '5', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('8', '配置管理', '7', 'set', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('9', '幻灯宣传', '7', 'focus', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('10', '文章管理', '7', 'content', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('63', '研习班管理', '7', 'workinfo', 'workoper', '0', '1', 'workinfo');
INSERT INTO `ec_adminmenu` VALUES ('12', '管理员修改', '3', 'admininfo', 'editadmin', '0', '2', null);
INSERT INTO `ec_adminmenu` VALUES ('17', '学员管理', '1', 'index', 'index', '7', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('18', '学员列表', '17', 'user', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('19', '支付明细', '17', 'payinfo', 'payoper', '0', '1', 'payinfo');
INSERT INTO `ec_adminmenu` VALUES ('20', '订阅明细', '17', 'buyinfo', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('22', '菜单列表', '2', 'adminmenu', 'index', '0', '1', null);
INSERT INTO `ec_adminmenu` VALUES ('24', '角色列表', '2', 'adminrole', 'index', '0', '1', null);
INSERT INTO `ec_adminmenu` VALUES ('43', '统计管理', '0', 'tongji', 'index', '0', '1', 'icon-baobiao');
INSERT INTO `ec_adminmenu` VALUES ('30', '学习记录', '17', 'learnlog', 'index', '0', '1', 'learnlog');
INSERT INTO `ec_adminmenu` VALUES ('31', '收藏列表', '17', 'collect', 'index', '0', '1', 'collect');
INSERT INTO `ec_adminmenu` VALUES ('32', '申请分社列表', '17', 'applyinfo', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('33', '线下大课', '17', 'buxiyanfa', 'buxiyanfa', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('34', '课程管理', '1', 'index', 'index', '8', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('64', '直播管理', '7', 'liveinfo', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('36', '课程专题管理', '34', 'course', 'index', '6', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('37', '等级管理', '34', 'level', 'levellist', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('38', 'VIP等级管理', '34', 'level', 'viplevellist', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('42', '栏目管理', '34', 'classify', 'index', '8', '1', '11111');
INSERT INTO `ec_adminmenu` VALUES ('44', '学员统计', '43', 'tongji', 'user', '0', '1', 'tongji');
INSERT INTO `ec_adminmenu` VALUES ('45', '课程统计', '43', 'tongji', 'index', '0', '1', null);
INSERT INTO `ec_adminmenu` VALUES ('46', '学员注册统计', '44', 'tongji', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('47', '学员支付统计', '44', 'tongji', 'payinfo', '0', '1', 'payinfo');
INSERT INTO `ec_adminmenu` VALUES ('48', '学员订阅统计', '44', 'tongji', 'buyinfo', '0', '1', 'buyinfo');
INSERT INTO `ec_adminmenu` VALUES ('49', '专题订阅统计', '45', 'tongji', 'coursebuy', '0', '1', 'coursebuy');
INSERT INTO `ec_adminmenu` VALUES ('50', '课程浏览统计', '45', 'tongji', 'courseview', '0', '1', 'courseview');
INSERT INTO `ec_adminmenu` VALUES ('51', '学员等级统计', '44', 'tongji', 'levelinfo', '0', '1', 'levelinfo');
INSERT INTO `ec_adminmenu` VALUES ('52', '学员vip统计', '44', 'tongji', 'vipinfo', '0', '1', 'vipinfo');
INSERT INTO `ec_adminmenu` VALUES ('53', '专题评论管理', '34', 'comment', 'comment', '5', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('54', '课程评论统计', '45', 'tongji', 'commentcount', '0', '1', 'commentcount');
INSERT INTO `ec_adminmenu` VALUES ('55', '学员城市统计', '44', 'tongji', 'usercity', '0', '1', 'usercity');
INSERT INTO `ec_adminmenu` VALUES ('57', '奖学金管理', '17', 'moneyinfo', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('62', '课程播放统计', '45', 'tongji', 'courseplay', '0', '1', 'courseplay');
INSERT INTO `ec_adminmenu` VALUES ('60', '问答管理', '7', 'forum', 'index', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('61', '工具下载管理', '7', 'downinfo', 'downinfo', '0', '1', 'index');
INSERT INTO `ec_adminmenu` VALUES ('65', '直播预约管理', '17', 'liveorder', 'index', '0', '1', 'order');
INSERT INTO `ec_adminmenu` VALUES ('66', '学分管理', '17', 'scoreinfo', 'index', '0', '1', 'scoreinfo');
INSERT INTO `ec_adminmenu` VALUES ('67', '评论的评论审核', '34', 'comment2', 'index', '0', '1', 'course');
INSERT INTO `ec_adminmenu` VALUES ('68', '问答评论审核', '7', 'forum', 'forum', '0', '1', 'forum');
INSERT INTO `ec_adminmenu` VALUES ('69', '问答评论的评论', '7', 'forum', 'forum2', '0', '1', 'forum');
INSERT INTO `ec_adminmenu` VALUES ('71', '下载分类管理', '7', 'subtype', 'index', '0', '1', 'subtype');
INSERT INTO `ec_adminmenu` VALUES ('72', '课程购买明细', '73', 'buylesson', 'index', '4', '1', 'buylesson');
INSERT INTO `ec_adminmenu` VALUES ('73', '课程管理(独)', '1', 'lessonalone', 'index', '6', '1', 'lesson_alone');
INSERT INTO `ec_adminmenu` VALUES ('74', '课程管理', '73', 'lessonalone', 'index', '6', '1', 'lesson_alone');
INSERT INTO `ec_adminmenu` VALUES ('75', '课程评论管理', '73', 'commentalone', 'comment', '5', '1', 'comment_alone');
INSERT INTO `ec_adminmenu` VALUES ('76', '课程回复审核', '73', 'comment2alone', 'index', '0', '1', 'comment2_alone');
INSERT INTO `ec_adminmenu` VALUES ('77', '课程收藏管理', '73', 'collectalone', 'index', '0', '1', 'collect_alone');
INSERT INTO `ec_adminmenu` VALUES ('78', '学习记录', '73', 'learn', 'index', '3', '1', 'index');

-- ----------------------------
-- Table structure for `ec_adminrole`
-- ----------------------------
DROP TABLE IF EXISTS `ec_adminrole`;
CREATE TABLE `ec_adminrole` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `role_power` varchar(1000) DEFAULT NULL COMMENT '权限设置，用逗号隔开menu_id',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员自定义角色设置';

-- ----------------------------
-- Records of ec_adminrole
-- ----------------------------
INSERT INTO `ec_adminrole` VALUES ('1', '系统管理员', '1,34,36,53,37,38,67,17,18,19,20,30,31,32,33,57,65,66,73,74,72,78,77,7,8,9,10,60,61,63,64,68,69,71,2,3,22,24,43,44,46,47,48,51,52,55,45,49,50,54,62');
INSERT INTO `ec_adminrole` VALUES ('2', '普通管理员', '1,34,42,36,53,37,38,17,18,19,20,30,32,33,7,8,9,10');

-- ----------------------------
-- Table structure for `ec_classify`
-- ----------------------------
DROP TABLE IF EXISTS `ec_classify`;
CREATE TABLE `ec_classify` (
  `classify_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类编号',
  `classify_name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `classify_icon` varchar(255) DEFAULT NULL COMMENT '分类图片',
  `classify_pic` varchar(255) DEFAULT NULL COMMENT '分类banner图',
  `classify_images` varchar(1000) DEFAULT NULL COMMENT '分类轮播图',
  `classify_remarks` text COMMENT '分类简介',
  `classify_sort` int(11) DEFAULT '0' COMMENT '分类排序',
  PRIMARY KEY (`classify_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='农学院专题分类表';

-- ----------------------------
-- Records of ec_classify
-- ----------------------------
INSERT INTO `ec_classify` VALUES ('1', '简异思维商学院', 'https://www.baidu.com/img/baidu_jgylogo3.gif', 'https://www.baidu.com/img/baidu_jgylogo3.gif', 'https://www.baidu.com/img/baidu_jgylogo3.gif', '简易思维商学院', '1');
INSERT INTO `ec_classify` VALUES ('2', '免费专题', 'http://192.168.2.2/jianyinew/uploadfile/image/20170921/20170921115521_89579.png', 'http://192.168.2.2/uploadfile/image/20170921/20170921115525_26413.png', 'http://192.168.2.2/uploadfile/image/20170921/20170921115528_34364.png', '免费专题', '2');

-- ----------------------------
-- Table structure for `ec_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ec_comment`;
CREATE TABLE `ec_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `course_id` int(11) DEFAULT '0' COMMENT '课程专题编号',
  `lesson_id` int(11) DEFAULT '0' COMMENT '单个课程id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `comment` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `comment_good` int(11) DEFAULT '0' COMMENT '点赞数量',
  `addtime` int(11) DEFAULT '0' COMMENT '评论时间',
  `comment_count` int(11) DEFAULT '0' COMMENT '评论数',
  `comment_top` tinyint(4) DEFAULT '1' COMMENT '置顶状态，1非置顶，2置顶',
  `comment_flag` tinyint(4) DEFAULT '1' COMMENT '审核状态，，1未审核，2已审核',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='农学院课程评论表';

-- ----------------------------
-- Records of ec_comment
-- ----------------------------
INSERT INTO `ec_comment` VALUES ('111', '20', '24', '7', '哈哈哈，我看看哦弄陌陌陌陌默默哦磨破7名明明哦明敏敏，您你好心', '0', '1509006035', '0', '1', '1');
INSERT INTO `ec_comment` VALUES ('112', '20', '24', '7', '您随心所欲7名你呢明明哦荣荣妈松坡，哦婆婆嘴求赞求赞求赞QwQ我送。我婆婆公公哄哄你，你明明。明敏敏哦婆婆ROM。一名嘻嘻我以为破涮羊肉，\n\n您随心所欲7名你呢明明哦荣荣妈松坡，哦婆婆嘴求赞求赞求赞QwQ我送。我婆婆公公哄哄你，你明明。明敏敏哦婆婆ROM。一名嘻嘻我以为破涮羊肉，', '2', '1509008599', '3', '1', '2');
INSERT INTO `ec_comment` VALUES ('113', '20', '24', '7', '的恶魔嗯哦哦陌陌魔装学院', '0', '1509008957', '0', '1', '2');
INSERT INTO `ec_comment` VALUES ('114', '20', '24', '7', '脱衣舞天空之舞之哦哦喔哦哦YY你现在用', '0', '1509008977', '0', '1', '2');
INSERT INTO `ec_comment` VALUES ('115', '21', '25', '10', '好的', '0', '1509593293', '0', '1', '2');
INSERT INTO `ec_comment` VALUES ('116', '21', '25', '10', '我们', '0', '1509593312', '0', '1', '2');
INSERT INTO `ec_comment` VALUES ('117', '3', '4', '7', '连连看', '0', '1511762017', '0', '1', '2');
INSERT INTO `ec_comment` VALUES ('118', '0', '28', '7', '33213213213', '0', '1511770101', '0', '1', '1');
INSERT INTO `ec_comment` VALUES ('119', '0', '28', '7', '12321312312', '0', '1511770132', '0', '1', '1');
INSERT INTO `ec_comment` VALUES ('120', '0', '28', '7', '321312321', '0', '1511770200', '0', '1', '1');
INSERT INTO `ec_comment` VALUES ('121', '0', '28', '7', '诶我去二无群二群无', '0', '1511770260', '0', '1', '1');
INSERT INTO `ec_comment` VALUES ('122', '0', '28', '7', '3123123123123312321', '0', '1511770564', '0', '1', '1');
INSERT INTO `ec_comment` VALUES ('123', '0', '28', '7', '3213123', '0', '1511770620', '0', '1', '1');

-- ----------------------------
-- Table structure for `ec_comment2`
-- ----------------------------
DROP TABLE IF EXISTS `ec_comment2`;
CREATE TABLE `ec_comment2` (
  `comment2_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `comment_id` int(11) DEFAULT '0' COMMENT '课程评论编号',
  `course_id` int(11) DEFAULT '0' COMMENT '课程专题编号',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `comment2` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `comment2_good` int(11) DEFAULT '0' COMMENT '点赞数量',
  `addtime2` int(11) DEFAULT '0' COMMENT '评论时间',
  `comment2_flag` tinyint(4) DEFAULT '1' COMMENT '审核状态，，1未审核，2已审核',
  PRIMARY KEY (`comment2_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='农学院课程评论的评论表';

-- ----------------------------
-- Records of ec_comment2
-- ----------------------------
INSERT INTO `ec_comment2` VALUES ('123', '112', '20', '7', '您随心所欲7名你呢明明哦荣荣妈松坡，哦婆婆嘴求赞求赞求赞QwQ我送。我婆婆公公哄哄你，你明明。明敏敏哦婆婆ROM。一名嘻嘻我以为破涮羊肉，您随心所欲7名你呢明明哦荣荣妈松坡，哦婆婆嘴求赞求赞求赞QwQ我送。我婆婆公公哄哄你，你明明。明敏敏哦婆婆ROM。一名嘻嘻我以为破涮羊肉，\n\n您随心所欲7名你呢明明哦荣荣妈松坡，哦婆婆嘴求赞求赞求赞QwQ我送。我婆婆公公哄哄你，你明明。明敏敏哦婆婆ROM。一名嘻嘻我以为破涮羊肉，', '0', '1509008690', '1');
INSERT INTO `ec_comment2` VALUES ('124', '112', '20', '7', '红庙沟', '0', '1509009089', '1');
INSERT INTO `ec_comment2` VALUES ('125', '112', '20', '10', '好', '0', '1509123215', '2');

-- ----------------------------
-- Table structure for `ec_content`
-- ----------------------------
DROP TABLE IF EXISTS `ec_content`;
CREATE TABLE `ec_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `video` varchar(255) DEFAULT NULL COMMENT '介绍视频',
  `image` varchar(255) DEFAULT NULL COMMENT '默认图片',
  `classtype` int(11) DEFAULT NULL COMMENT '分类id，1单页，2其他文章',
  `content_isshow` tinyint(4) DEFAULT '1' COMMENT '状态：1显示；2隐藏',
  `description` varchar(255) DEFAULT NULL COMMENT '简介',
  `content` text COMMENT '内容',
  `addtime` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='内容信息表';

-- ----------------------------
-- Records of ec_content
-- ----------------------------
INSERT INTO `ec_content` VALUES ('1', '奖励政策', 'https://common.qupai.me/player/qupai.mp4', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916114243_23546.jpg', '1', '0', '奖励政策', '<p style=\"font-size:14px;text-indent:30px;font-family:&quot;background-color:#FFFFFF;\">\r\n	2016年10月12日下午全国双创周深圳主会场上动人的一幕。李克强对这一创业团队给予特殊关注，并应邀在“关爱听障人创业”画板上签上自己的名字。\r\n</p>\r\n<p style=\"font-size:14px;text-indent:30px;font-family:&quot;background-color:#FFFFFF;\">\r\n	去年年中以来，国务院18部委合力为留学回国人员创业创新“清障搭台”，破解难题。这一切，缘于李克强总理的一次批示。\r\n</p>\r\n<p style=\"font-size:14px;text-indent:30px;font-family:&quot;background-color:#FFFFFF;\">\r\n	2016年6月，有份材料集中反映了留学回国人员创业创新中遇到的烦恼和障碍，其中突出表现为优惠政策享受难，落户就学办理难，开户融资难，知识产权应用难，政策限制放开难，文化理念融合难等“六难”，李克强总理在这份材料上做出批示，要求有关部门合力研究解决“六难”问题。\r\n</p>\r\n<p style=\"font-size:14px;text-indent:30px;font-family:&quot;background-color:#FFFFFF;\">\r\n	总理批示后，国务院18个相关部委雷厉风行行动起来，合力破解材料中反映的带有普遍性的问题。\r\n</p>\r\n<p style=\"font-size:14px;text-indent:30px;font-family:&quot;background-color:#FFFFFF;\">\r\n	为留学回国创业者申请补贴扫清障碍\r\n</p>\r\n<p style=\"font-size:14px;text-indent:30px;font-family:&quot;background-color:#FFFFFF;\">\r\n	“明明听说有政府补助，但不知道具体找谁申请。后来经过‘圈里人’介绍才知道，要拿到补助最好找中介，但中介费高达补助金额的30%。”一位留美归国人员在李克强总理批示的材料上这样说。\r\n</p>\r\n<p style=\"font-size:14px;text-indent:30px;font-family:&quot;background-color:#FFFFFF;\">\r\n	该材料涉及的某国家自主创新示范区和相关部门根据总理批示，很快公开了补贴申请办法，并建立起公示、举报、查处和问责机制，规范孵化服务行为，提高服务质量，为包括留学回国人员在内的创业者申请补贴扫清了障碍。财政部则向社会公开了资金管理办法、申报指南和分配结果，使专项资金分配更加透明。\r\n</p>\r\n<p style=\"font-size:14px;text-indent:30px;font-family:&quot;background-color:#FFFFFF;\">\r\n	为破解优惠政策碎片化造成的了解难、享受更难等问题，工业和信息化部会同有关单位提出包括财税支持、金融扶持等方面共28条支持小微企业发展的重要举措，发展改革委、人力资源和社会保障部、工商总局以宣讲、公示等多种方式加大工作力度，提高小微企业扶持政策的知晓度和精准度。\r\n</p>', '1506156021');
INSERT INTO `ec_content` VALUES ('2', '申请分社条款', 'https://common.qupai.me/player/qupai.mp4', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916114243_23546.jpg', '1', '0', '申请分社条款', '<p class=\"MsoNormal\">\r\n	<span style=\"font-family:monospace;font-size:medium;\">本平台发布的课程（包括视频、音频、文字资料）仅限学员个人学习使用，</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:monospace;font-size:medium;\">除学员就每次课程摘录的少量文字资料外（文字字数不超过2000字），</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:monospace;font-size:medium;\">任何人不得以复制、摘录、超过上述字数限制的文字整理等方式就课程内容对外传播。否则，</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:monospace;font-size:medium;\">本平台将依法维护自己的权益</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span></span> \r\n</p>', '1506156021');
INSERT INTO `ec_content` VALUES ('3', '研习班介绍', 'https://common.qupai.me/player/qupai.mp4', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916114243_23546.jpg', '1', '0', '研习班介绍', '<p>\r\n	信用首先表现为民间个别信用，即个别信用是信用产生最初的源。它是债务人在一次借贷或赊账中表现的履约行为或能力。它的范围仅限于借贷双方当事人。对授信方来说，表现为其对被授信方的信任，对被授信方来说，表现为其对特定金额、特定期限债务的偿还能力。个别信用的基础是授信人在长期交往和合作中形成的对被授信人的信任，主观判断占有很大成份。但是，人要生存，就要交往，要依赖对方，要信任对方，个别信用必将发展为普遍信用，参与活动的当事人，从个体的信用推及到他人的信用，并从这个信用活动中获得了对本体和对应体的诸多便利，信用的价值带来信用的产生并有了一定的功效，使得受益的个体在以后的交往活动中遵循、重复同一行为。一个人不断重复一种行为就往往会使这种行为模式固化为一种习惯，而个人的习惯应是社会（经济）制度自发型构与演进和变迁的基础和逻辑起点。[4]\r\n研习班介绍\r\n</p>\r\n<p>\r\n	<img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171027/20171027135911_27138.jpg\" alt=\"\" />\r\n</p>', '1506156021');
INSERT INTO `ec_content` VALUES ('4', '合伙人招募介绍', 'https://common.qupai.me/player/qupai.mp4', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916162547_83633.jpg', '1', '0', '合伙人招募', '<p>\r\n	合伙人招募介绍合伙人招募介绍合伙人招募介绍合伙人招募介绍合伙人招募介绍合伙人招募介绍\r\n</p>\r\n<p>\r\n	<span><span>信用首先表现为民间个别信用，即个别信用是信用产生最初的源。它是债务人在一次借贷或赊账中表现的履约行为或能力。它的范围仅限于借贷双方当事人。对授信方来说，表现为其对被授信方的信任，对被授信方来说，表现为其对特定金额、特定期限债务的偿还能力。个别信用的基础是授信人在长期交往和合作中形成的对被授信人的信任，主观判断占有很大成份。但是，人要生存，就要交往，要依赖对方，要信任对方，个别信用必将发展为普遍信用，参与活动的当事人，从个体的信用推及到他人的信用，并从这个信用活动中获得了对本体和对应体的诸多便利，信用的价值带来信用的产生并有了一定的功效，使得受益的个体在以后的交往活动中遵循、重复同一行为。一个人不断重复一种行为就往往会使这种行为模式固化为一种习惯，而个人的习惯应是社会（经济）制度自发型构与演进和变迁的基础和逻辑起点。</span></span>\r\n</p>\r\n<p>\r\n	<span></span><span></span><span></span><span></span><span></span><span></span> \r\n</p>\r\n<p>\r\n	<span>合伙人招募介绍</span><span>合伙人招募介绍</span><span>合伙人招募介绍</span><span>合伙人招募介绍</span><span>合伙人招募介绍</span><span>合伙人招募介绍</span> \r\n</p>', '1506156021');
INSERT INTO `ec_content` VALUES ('5', '学员加入介绍', 'https://common.qupai.me/player/qupai.mp4', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916162534_38943.jpg', '1', '1', '学员加入', '<p style=\"text-align:center;\">\r\n	<img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171102/20171102161126_96410.png\" alt=\"\" />\r\n</p>', '1506156021');
INSERT INTO `ec_content` VALUES ('10', '学分规则', '', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171013/20171013142658_23092.jpg', '1', '1', null, '<p>\r\n	学分规则\r\n</p>\r\n<p>\r\n	<span>学分规则</span>\r\n</p>\r\n<p>\r\n	<span>学分规则</span>\r\n</p>\r\n<p>\r\n	<span>学分规则</span>\r\n</p>\r\n<p>\r\n	<span>学分规则</span>\r\n</p>\r\n<p>\r\n	<span>学分规则</span>\r\n</p>\r\n<p>\r\n	<span>学分规则</span>\r\n</p>\r\n<p>\r\n	<span>学分规则</span>\r\n</p>\r\n<p>\r\n	<span>学分规则</span>\r\n</p>', '1507862369');
INSERT INTO `ec_content` VALUES ('13', '奖学金制度', 'http://www.xxx.com/player.php/sid/v.mp3', '', '1', '1', null, '<p>\r\n	<span style=\"font-family:微软雅黑, \" color:red;\"=\"\">：http://www.xxx.com/player.php/sid/v.mp3</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \" color:red;\"=\"\"><span>：http://www.xxx.com/player.php/sid/v.mp3</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \" color:red;\"=\"\"><span>：http://www.xxx.com/player.php/sid/v.mp3</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \" color:red;\"=\"\"><span>：http://www.xxx.com/player.php/sid/v.mp3</span><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<span>：http://www.xxx.com/player.php/sid/v.mp3</span>\r\n</p>', '1508394742');
INSERT INTO `ec_content` VALUES ('14', '关于简异思维', '', '', '1', '1', null, '<p>\r\n	<span style=\"font-family:monospace;font-size:medium;\">关于简易思维 &nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:monospace;font-size:medium;\"><span style=\"font-family:monospace;font-size:medium;\">关于简易思维&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:monospace;font-size:medium;\"><span style=\"font-family:monospace;font-size:medium;\">关于简易思维&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:monospace;font-size:medium;\"><span style=\"font-family:monospace;font-size:medium;\">关于简易思维&nbsp;</span><span style=\"font-family:monospace;font-size:medium;\">关于简易思维&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:monospace;font-size:medium;\"><span style=\"font-family:monospace;font-size:medium;\">关于简易思维&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:monospace;font-size:medium;\"><span style=\"font-family:monospace;font-size:medium;\">关于简易思维&nbsp;</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:monospace;font-size:medium;\"><span style=\"font-family:monospace;font-size:medium;\">关于简易思维&nbsp;</span><br />\r\n</span> \r\n</p>', '1508394759');

-- ----------------------------
-- Table structure for `ec_course`
-- ----------------------------
DROP TABLE IF EXISTS `ec_course`;
CREATE TABLE `ec_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `classify_id` int(11) DEFAULT '0' COMMENT '分类id',
  `course_name` varchar(100) DEFAULT NULL COMMENT '课程专题名称',
  `course_remarks` varchar(255) DEFAULT NULL COMMENT '课程专题简介',
  `course_images` varchar(500) DEFAULT NULL COMMENT '课程专题多图',
  `course_money` float(8,2) DEFAULT '0.00' COMMENT '年费',
  `course_limit` float(8,2) DEFAULT '0.00' COMMENT '抢购价，年费',
  `course_limittime` int(11) DEFAULT '0' COMMENT '抢购倒计时时间',
  `course_title` text COMMENT '集数名称，多个用竖线隔开',
  `course_content` text COMMENT '课程专题介绍内容',
  `course_addtime` int(11) DEFAULT '0' COMMENT '添加时间',
  `course_retime` int(11) DEFAULT '0' COMMENT '更新时间',
  `course_play` int(11) DEFAULT '0' COMMENT '播放量，视频和音频播放合计，正片，作废',
  `course_view` int(11) DEFAULT '0' COMMENT '浏览量，作废',
  `course_groom` tinyint(4) DEFAULT '1' COMMENT '是否推荐，1不推荐，2推荐',
  `course_hot` tinyint(4) DEFAULT '1' COMMENT '是否热播，1不热播，2热播，作废',
  `course_sort` int(11) DEFAULT '0' COMMENT '排序',
  `course_showmoney` tinyint(4) DEFAULT '1' COMMENT '是否显示价格，1不显示，2显示，只有热播有效，作废',
  `course_isable` tinyint(4) DEFAULT '1' COMMENT '是否已删除，1正常，0删除',
  `course_buy` int(11) DEFAULT '0' COMMENT '订阅量',
  `course_allparts` int(11) DEFAULT '0' COMMENT '总集数',
  `course_parts` int(11) DEFAULT '0' COMMENT '更新到集数',
  `course_speaker` varchar(50) DEFAULT NULL COMMENT '主讲老师',
  `speaker_remarks` varchar(500) DEFAULT NULL COMMENT '讲师介绍',
  `course_partremarks` varchar(255) DEFAULT NULL COMMENT '专题更新说明',
  PRIMARY KEY (`course_id`),
  KEY `classify_id` (`classify_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='农学院课程专题表';

-- ----------------------------
-- Records of ec_course
-- ----------------------------
INSERT INTO `ec_course` VALUES ('18', '2', 'MYSQL  从删库到跑路', 'MYSQL  从入门到精通专题简介', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171013/20171013093228_10019.jpg|http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171013/20171013093232_69908.jpg', '2000.00', '0.00', '1506821533', null, '<p>\r\n	MYSQL&nbsp; 从入门到精通<span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\">专题内容</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\"><span>MYSQL&nbsp; 从入门到精通</span><span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\">专题内容</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\"><span>MYSQL&nbsp; 从入门到精通</span><span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\">专题内容</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\"><span>MYSQL&nbsp; 从入门到精通</span><span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\">专题内容</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\"><span>MYSQL&nbsp; 从入门到精通</span><span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\">专题内容</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\"><span>MYSQL&nbsp; 从入门到精通</span><span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\">专题内容</span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\"><span>MYSQL&nbsp; 从入门到精通</span><span style=\"font-family:微软雅黑, \" font-size:14px;\"=\"\">专题内容</span><br />\r\n</span> \r\n</p>', '1507858413', '1507884815', '0', '0', '1', '1', '0', '1', '1', '0', '35', '2', '', '', '每周更新10集');
INSERT INTO `ec_course` VALUES ('19', '2', '普通话', '讲一口流利的普通话', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026160148_61193.png', '200.00', '188.00', '1507858183', null, '是地方撒发生的发生大发十多个大范甘迪发货方官方价格都会经过购房计划给大家更好的结果和价格都会经过很多机会更多机会更多机会都改好价格对酒当歌很久的呱唧呱唧横岗街道估计 更好的句独孤皇后觉得更好几点过后就会更多机会更多价格环境规划计划哥几个环节都改好价格合计估计大家给个规划今年的规划计划规定几个电话就会给大家都改好价格的计划经济规划结构和计划根据规划结构和计划购房计划规定好几个电话机构都会觉得根据多个环节多个环节价格环境规划规划和环境规划辅导机构大家很多国家规定和价格都会觉得规划局合格机构的价格都会经过大家好机会好好计划的计划计划合计合计合计更好的句或军过或过或军军军或军军军军高合金钢对景挂画&nbsp;&nbsp;', '1507858419', '1509004912', '0', '0', '1', '1', '2', '1', '1', '0', '22', '0', '', '', '每周更新5集');
INSERT INTO `ec_course` VALUES ('20', '1', '麻省理工学院OCW计算机课程精选', 'OCW 的全称是 MITOPENCOURSEWARE，即麻省理工学院公开课。MITOCW 创建于2001年，到今天已经有超过2000门麻省理工学院的课程供全世界的学习者免费学习。同学们，一起来吧！', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171013/20171013093406_38185.jpg|http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171013/20171013093414_92680.jpg', '500.00', '299.00', '1507858292', null, '<span style=\"color:#666666;font-family:&quot;font-size:14px;background-color:#FCFCFC;\">这是一门囊括了EE和CS的综合性前导课，由6位教授合作讲授！这门课通过实际地设计和制作一个可自行移动的机器人，讲授EECS中各种重要的基础知识和概念：面向对象编程、状态机、信号与系统、电路、概率分析、查找算法与优化，等等等等。</span>', '1507858544', '1507858544', '0', '0', '1', '1', '1', '2', '1', '1', '8', '2', '', '', '每周四晚八点更新一集');
INSERT INTO `ec_course` VALUES ('3', '1', '限时抢购专题', '每周2节，全年更新100节，音视频大课，全面掌握业绩倍增工具', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026165029_18854.png', '199.00', '1.00', '1515836800', '第一集|第二集|第三集|第四集', '<span style=\"font-family:Arial, \" font-size:14px;color:#333333;background-color:#ffffff;\"=\"\"><span style=\"color:#191919;font-family:\" font-size:16px;background-color:#ffffff;\"=\"\">企业当中发生的很多问题其实追本溯源会发现都是人的问题。人是这一切的根源。如果你有帮一条心的人来帮助你经营企业，企业的高度和状态就会焕然一新。</span></span>', '1504247658', '1509008018', '149', '55555', '2', '1', '2', '1', '1', '24', '100', '1', '主讲老师', '讲师介绍\r\n', '每周更新2集');
INSERT INTO `ec_course` VALUES ('22', '2', '超速盈利模式', '简介 简介 简介', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026160307_46892.png', '258.00', '0.00', '1507622540', null, '内容内容内容', '1509005014', '1509005014', '0', '0', '1', '1', '3', '1', '1', '0', '10', '0', '', '', '每周更新2集');
INSERT INTO `ec_course` VALUES ('21', '1', '客户无法拒绝，对手无法复制，颠覆式创新系统', '打通收钱系统，让变现更容易', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026151503_92466.png|http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026151505_50937.png', '258.00', '1.00', '1507014611', null, '<img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026152128_75731.jpg\" alt=\"\" />', '1509002512', '1509002512', '0', '0', '1', '1', '1', '2', '1', '0', '10', '2', '', '', '每周更新2集');

-- ----------------------------
-- Table structure for `ec_focusinfo`
-- ----------------------------
DROP TABLE IF EXISTS `ec_focusinfo`;
CREATE TABLE `ec_focusinfo` (
  `focus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `focus_type` tinyint(4) DEFAULT '0' COMMENT '幻灯类型，1首页轮播，2农学院轮播，3专家问答轮播',
  `focus_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `focus_url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `focus_image` varchar(255) DEFAULT NULL COMMENT '图片',
  `focus_sort` int(11) DEFAULT '0' COMMENT '排序',
  `focus_addtime` int(11) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`focus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='幻灯宣传表';

-- ----------------------------
-- Records of ec_focusinfo
-- ----------------------------
INSERT INTO `ec_focusinfo` VALUES ('1', '1', '简易思维', '', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171102/20171102151054_38427.png', '1', '1509606661');
INSERT INTO `ec_focusinfo` VALUES ('7', '1', '简易思维', '', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171102/20171102151114_66563.png', '3', '1509606676');
INSERT INTO `ec_focusinfo` VALUES ('8', '1', '简易思维', '', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171102/20171102151107_65972.png', '2', '1509606669');
INSERT INTO `ec_focusinfo` VALUES ('18', '3', '简易思维-问答', 'http://#', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916095353_73978.jpg', '3', '1505526839');
INSERT INTO `ec_focusinfo` VALUES ('16', '3', '简易思维-问答', 'http://#', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916095353_73978.jpg', '1', '1505526839');
INSERT INTO `ec_focusinfo` VALUES ('17', '3', '简易思维-问答', '', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916095353_73978.jpg', '2', '1507862834');
INSERT INTO `ec_focusinfo` VALUES ('19', '4', '如果契约制度靠不住，那人与人之间就', 'http://#', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916101934_22247.jpg', '2', '1505528377');
INSERT INTO `ec_focusinfo` VALUES ('20', '4', '如果契约制度靠不住，那人与人之间就', 'http://#', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916101934_22247.jpg', '1', '1505528377');
INSERT INTO `ec_focusinfo` VALUES ('6', '2', '海报', 'http://weixingc.ylii.org.cn/jianyinew/index.php?m=Home&c=course&a=video&course_id=20', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171023/20171023161230_64662.png', '1', '1508746352');
INSERT INTO `ec_focusinfo` VALUES ('23', '1', '简异思维首页', '', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171102/20171102151127_39025.png', '4', '1509606701');
INSERT INTO `ec_focusinfo` VALUES ('24', '4', '标题', '', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171103/20171103175255_94894.png', '3', '1509702784');
INSERT INTO `ec_focusinfo` VALUES ('25', '4', '标题', '', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171103/20171103175317_16830.png', '4', '1509702800');

-- ----------------------------
-- Table structure for `ec_learninfo`
-- ----------------------------
DROP TABLE IF EXISTS `ec_learninfo`;
CREATE TABLE `ec_learninfo` (
  `learn_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `course_id` int(11) DEFAULT '0' COMMENT '课程专题id',
  `lesson_id` int(11) DEFAULT '0' COMMENT '单个课程id',
  `learn_addtime` int(11) DEFAULT '0' COMMENT '学习时间',
  PRIMARY KEY (`learn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8 COMMENT='农学院学习记录表，每个课程每天仅记录一次';

-- ----------------------------
-- Records of ec_learninfo
-- ----------------------------
INSERT INTO `ec_learninfo` VALUES ('347', '6', '18', '2', '1508751688');
INSERT INTO `ec_learninfo` VALUES ('360', '7', '18', '2', '1511772627');
INSERT INTO `ec_learninfo` VALUES ('349', '6', '3', '4', '1508751869');
INSERT INTO `ec_learninfo` VALUES ('350', '10', '18', '3', '1509876425');
INSERT INTO `ec_learninfo` VALUES ('351', '10', '20', '24', '1509593792');
INSERT INTO `ec_learninfo` VALUES ('352', '10', '3', '4', '1508864313');
INSERT INTO `ec_learninfo` VALUES ('353', '9', '3', '4', '1508916175');
INSERT INTO `ec_learninfo` VALUES ('359', '7', '20', '27', '1511833009');
INSERT INTO `ec_learninfo` VALUES ('355', '13', '18', '3', '1509094861');
INSERT INTO `ec_learninfo` VALUES ('356', '10', '21', '25', '1509593457');
INSERT INTO `ec_learninfo` VALUES ('357', '8', '18', '2', '1509549700');
INSERT INTO `ec_learninfo` VALUES ('358', '8', '20', '24', '1509549580');
INSERT INTO `ec_learninfo` VALUES ('361', '9', '18', '2', '1509873897');
INSERT INTO `ec_learninfo` VALUES ('362', '7', '3', '4', '1511833497');
INSERT INTO `ec_learninfo` VALUES ('363', '7', '21', '25', '1511767971');

-- ----------------------------
-- Table structure for `ec_lesson`
-- ----------------------------
DROP TABLE IF EXISTS `ec_lesson`;
CREATE TABLE `ec_lesson` (
  `lesson_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `course_id` int(11) DEFAULT '0' COMMENT '课程专题ID',
  `lesson_name` varchar(100) DEFAULT NULL COMMENT '单个课程名称',
  `lesson_remarks` varchar(255) DEFAULT NULL COMMENT '单个课程简介',
  `lesson_image` varchar(1000) DEFAULT NULL COMMENT '单个课程图片',
  `lesson_video` varchar(255) DEFAULT NULL COMMENT '单个课程视频地址',
  `lesson_video_time` varchar(50) DEFAULT NULL COMMENT '单个课程视频时长',
  `lesson_audio` varchar(255) DEFAULT NULL COMMENT '单个课程音频地址',
  `lesson_audio_time` varchar(50) DEFAULT NULL COMMENT '单个课程音频时长',
  `lesson_try_video` varchar(255) DEFAULT NULL COMMENT '单个课程试看视频地址',
  `lesson_try_audio` varchar(255) DEFAULT NULL COMMENT '单个课程试听音频地址',
  `lesson_ishot` tinyint(4) DEFAULT '1' COMMENT '是否热播，1非热播，2热播',
  `lesson_showmoney` tinyint(4) DEFAULT '1' COMMENT '价格显示，1不显示，2显示',
  `lesson_content` text COMMENT '单个课程介绍内容',
  `lesson_view` int(11) DEFAULT '0' COMMENT '浏览数量，正片',
  `lesson_play` int(11) DEFAULT '0' COMMENT '播放数量，正片，貌似后面播放量和浏览量一样，如果自动播放的话',
  `lesson_addtime` int(11) DEFAULT '0' COMMENT '添加时间',
  `lesson_isable` tinyint(4) DEFAULT '1' COMMENT '是否已删除，1正常，0删除',
  `lesson_code` int(11) DEFAULT '1' COMMENT '集数',
  PRIMARY KEY (`lesson_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='农学院 单个课程表';

-- ----------------------------
-- Records of ec_lesson
-- ----------------------------
INSERT INTO `ec_lesson` VALUES ('24', '20', '01-这个是个大标题真的是很大很大的标题', '这个是课程介绍介绍介绍介绍介绍介绍介绍介绍', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026155707_85613.png|http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026155710_18827.png', 'http://pic.qiantucdn.com/58pic/shipin/17/63/80/17638063.mp4 ', '100', 'http://media.58pic.com/audio/audio_preivew/14/30/41/58pic_audio_14304182.mp3 ', '11', 'http://weixingc.ylii.org.cn/jianyinew/html/2.mp4', ' http://media.58pic.com/audio/audio_preivew/14/29/51/58pic_audio_14295104.mp3 ', '2', '1', '<p>\r\n	adaaDAD\r\n</p>\r\n<p>\r\n	<img src=\"http://192.168.2.2/uploadfile/image/20171018/20171018143426_92543.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<ul style=\"color:#1A1A1A;font-family:lucida grande, lucida sans unicode, lucida, helvetica, Hiragino Sans GB, Microsoft YaHei, WenQuanYi Micro Hei, sans-serif;font-size:14px;\">\r\n	<li>\r\n		从浏览器中创建 XMLHttpRequest\r\n	</li>\r\n	<li>\r\n		从 node.js 发出 http 请求\r\n	</li>\r\n	<li>\r\n		支持 Promise API\r\n	</li>\r\n	<li>\r\n		拦截请求和响应\r\n	</li>\r\n	<li>\r\n		转换请求和响应数据\r\n	</li>\r\n	<li>\r\n		取消请求\r\n	</li>\r\n	<li>\r\n		自动转换JSON数据\r\n	</li>\r\n	<li>\r\n		客户端支持防止 CSRF/XS\r\n	</li>\r\n	<li>\r\n		F<img src=\"http://192.168.2.2/uploadfile/image/20171018/20171018145905_23417.jpg\" alt=\"\" /> \r\n	</li>\r\n</ul>\r\n<p>\r\n	<br />\r\n</p>', '128497', '2559', '1507865654', '1', '1');
INSERT INTO `ec_lesson` VALUES ('2', '18', 'MYSQL t从入门到精通0', 'MYSQL  从入门到精通0课程简介', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916100750_35361.jpg|http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171113/20171113135335_85585.png', 'http://weixingc.ylii.org.cn/jianyinew/html/2.mp4', '222', 'http://weixingc.ylii.org.cn/jianyinew/html/002.mp3', '10分钟', 'http://weixingc.ylii.org.cn/jianyinew/html/2.mp4', 'http://weixingc.ylii.org.cn/jianyinew/html/001.mp3', '2', '1', '<p>\r\n	MYSQL t从入门到精通0\r\n</p>\r\n<p>\r\n	MYSQL t从入门到精通0\r\n</p>\r\n<p>\r\n	MYSQL t从入门到精通0\r\n</p>\r\n<p>\r\n	MYSQL t从入门到精通0\r\n</p>\r\n<p>\r\n	MYSQL t从入门到精通0\r\n</p>\r\n<p>\r\n	MYSQL t从入门到精通0\r\n</p>', '104550', '54149', '1507603075', '1', '1');
INSERT INTO `ec_lesson` VALUES ('3', '18', 'MYSQL  从入门到精通1', 'MYSQL  从入门到精通1课程简介', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916100750_35361.jpg', 'http://hknezaifbak6jzph93c.exp.bcevod.com/mda-hknf1a4hih1bmr8a/mda-hknf1a4hih1bmr8a.mp4', '333', 'http://hknezaifbak6jzph93c.exp.bcevod.com/mda-hkpe9xfasjrqy15m/mda-hkpe9xfasjrqy15m.mp4', '10分钟', 'http://weixingc.ylii.org.cn/jianyinew/html/20.mp4', 'http://weixingc.ylii.org.cn/jianyinew/html/001.mp3', '1', '1', '<p>\r\n	MYSQL&nbsp; 从入门到精通1\r\n</p>\r\n<p>\r\n	<span>MYSQL&nbsp; 从入门到精通1</span>\r\n</p>\r\n<p>\r\n	<span>MYSQL&nbsp; 从入门到精通1</span>\r\n</p>\r\n<p>\r\n	<span>MYSQL&nbsp; 从入门到精通1</span>\r\n</p>\r\n<p>\r\n	<span>MYSQL&nbsp; 从入门到精通1</span>\r\n</p>\r\n<p>\r\n	<span>MYSQL&nbsp; 从入门到精通1</span>\r\n</p>\r\n<p>\r\n	<span>MYSQL&nbsp; 从入门到精通1</span>\r\n</p>\r\n<p>\r\n	<span>MYSQL&nbsp; 从入门到精通1</span>\r\n</p>', '55260', '1234', '1507603075', '1', '2');
INSERT INTO `ec_lesson` VALUES ('4', '3', 'PHP 从入门到精通0', 'PHP 从入门到精通', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171013/20171013105129_35015.jpg|http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171013/20171013105133_87511.jpg', 'https://common.qupai.me/player/qupai.mp4', '01:57', 'http://weixingc.ylii.org.cn/jianyinew/html/002.mp3', '10分钟', 'http://maoyan.meituan.net/movie/videos/ad429561494a4eb09de1c007f037c847.mp4', 'http://weixingc.ylii.org.cn/jianyinew/html/001.mp3', '2', '2', 'https://common.qupai.me/player/qupai.mp4', '238215', '15563', '1507603725', '1', '1');
INSERT INTO `ec_lesson` VALUES ('25', '21', '01-你可以复制我的模式。但是无法复制我的苦难', '留不住能人，企业干不大', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026154017_20269.png|http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026154029_36375.png', '<iframe height=498 width=510 src=http://player.youku.com/embed/XNTA1ODA1MzY4 frameborder=0 allowfullscreen></iframe>', '24分钟', '<iframe height=498 width=510 src=http://player.youku.com/embed/XMjg1NDUzNjY0MA== frameborder=0 allowfullscreen></iframe>', '5分钟', '<iframe height=498 width=510 src=http://player.youku.com/embed/XNTA1ODA1MzY4 frameborder=0 allowfullscreen></iframe>', '<iframe height=498 width=510 src=http://player.youku.com/embed/XNTA1ODA1MzY4 frameborder=0 allowfullscreen></iframe>', '2', '1', '<p>\r\n	课程文字介绍，<span>课程文字介绍，</span><span>课程文字介绍，</span><span>课程文字介绍，</span><span>课程文字介绍，</span><span>课程文字介绍，</span><span>课程文字介绍，</span><span>课程文字介绍，</span>\r\n</p>\r\n<p>\r\n	<span><img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026153510_53154.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', '25503', '33440', '1509003853', '1', '1');
INSERT INTO `ec_lesson` VALUES ('26', '21', '02虚头巴脑的企业文化真靠谱吗？', '这是课程简介简介简介简介', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026154506_92446.png|http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026154509_60501.png', '<iframe height=498 width=510 src=http://player.youku.com/embed/XNTA1ODA1MzY4 frameborder=0 allowf', '5分钟', '<iframe height=498 width=510 src=http://player.youku.com/embed/XNTA1ODA1MzY4 frameborder=0 allowf', '5分钟', '<iframe height=498 width=510 src=http://player.youku.com/embed/XNTA1ODA1MzY4 frameborder=0 allowf', '<iframe height=498 width=510 src=http://player.youku.com/embed/XNTA1ODA1MzY4 frameborder=0 allowf', '1', '1', '<img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026152128_75731.jpg\" alt=\"\" />', '51247', '45681', '1509004002', '1', '2');
INSERT INTO `ec_lesson` VALUES ('27', '20', '02-这是第二课的大标题真的很大委屈委屈翁群无若群若', '这个是课程介绍介绍介绍介绍介绍介绍介绍介绍', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026161035_73391.png|http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171026/20171026161037_36389.png', 'http://pic.qiantucdn.com/58pic/shipin/17/63/80/17638063.mp4 ', '10分钟', 'http://media.58pic.com/audio/audio_preivew/14/30/41/58pic_audio_14304182.mp3 ', '5分钟', 'http://pic.qiantucdn.com/58pic/shipin/14/22/08/14220840.mp4 ', 'http://media.58pic.com/audio/audio_preivew/14/29/51/58pic_audio_14295104.mp3 ', '1', '1', '<p>\r\n	阿诗大神阿达的阿萨德啊撒大声地撒旦撒旦\r\n</p>\r\n<p>\r\n	<img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171023/20171023161230_64662.png\" alt=\"\" /> \r\n</p>', '3136', '16545', '1509005522', '1', '2');

-- ----------------------------
-- Table structure for `ec_payinfo`
-- ----------------------------
DROP TABLE IF EXISTS `ec_payinfo`;
CREATE TABLE `ec_payinfo` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `pay_type` tinyint(4) DEFAULT '0' COMMENT '支付方式，1微信，2手动，3其他',
  `pay_money` float(8,2) DEFAULT '0.00' COMMENT '支付金额',
  `pay_remarks` varchar(255) DEFAULT NULL COMMENT '支付备注，余额，升级，购买等等',
  `pay_addtime` int(11) DEFAULT '0' COMMENT '支付时间',
  `pay_flag` tinyint(4) DEFAULT '1' COMMENT '支付状态，1未支付，2已支付',
  `pay_no` varchar(80) DEFAULT NULL COMMENT '支付订单号，自己的',
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='支付表';

-- ----------------------------
-- Records of ec_payinfo
-- ----------------------------
INSERT INTO `ec_payinfo` VALUES ('42', '7', '2', '200.00', '1', '1509011024', '2', 'jy1509011024747');
INSERT INTO `ec_payinfo` VALUES ('43', '7', '2', '500000.00', '2', '1509084422', '2', 'jy1509084422373');
INSERT INTO `ec_payinfo` VALUES ('44', '8', '2', '50000.00', '', '1509703793', '2', 'jy1509703793115');
INSERT INTO `ec_payinfo` VALUES ('45', '10', '2', '50000.00', '', '1509703802', '2', 'jy1509703802443');
INSERT INTO `ec_payinfo` VALUES ('46', '12', '2', '50000.00', '', '1509703812', '2', 'jy1509703812525');

-- ----------------------------
-- Table structure for `ec_setinfo`
-- ----------------------------
DROP TABLE IF EXISTS `ec_setinfo`;
CREATE TABLE `ec_setinfo` (
  `set_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `set_key` varchar(50) DEFAULT NULL COMMENT '配置key',
  `set_value` text COMMENT '配置值',
  `set_remark` varchar(50) DEFAULT NULL COMMENT '简介说明',
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置信息表';

-- ----------------------------
-- Records of ec_setinfo
-- ----------------------------
INSERT INTO `ec_setinfo` VALUES ('1', 'webtitle', '简异思维', '标题');
INSERT INTO `ec_setinfo` VALUES ('2', 'kefuphone', '0755-89303849', '客服电话');
INSERT INTO `ec_setinfo` VALUES ('4', 'xiaozhang', '14444444444', '校长办公室电话');
INSERT INTO `ec_setinfo` VALUES ('5', 'signin', '10', '签到获取学分');
INSERT INTO `ec_setinfo` VALUES ('6', 'groom', '100.00', '推荐获取奖学金金额');

-- ----------------------------
-- Table structure for `ec_user`
-- ----------------------------
DROP TABLE IF EXISTS `ec_user`;
CREATE TABLE `ec_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `avatar` varchar(255) DEFAULT NULL COMMENT '图像路径',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `openid` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `vipstarttime` int(11) DEFAULT NULL COMMENT '购买vip开始时间',
  `vip` int(11) DEFAULT '0' COMMENT 'vip级别，0表示非vip用户',
  `vipendtime` int(11) DEFAULT '0' COMMENT 'vip到期时间，同步购买包年',
  `level` int(11) DEFAULT '0' COMMENT '等级级别，默认进来就是等级1',
  `learntime` int(11) DEFAULT '0' COMMENT '学习总时长，秒',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `money` float(8,2) DEFAULT '0.00' COMMENT '余额，奖学金',
  `score` int(11) DEFAULT '0' COMMENT '学分',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `city` varchar(50) DEFAULT NULL COMMENT '城市',
  `firm` varchar(255) DEFAULT NULL COMMENT '公司',
  `job` varchar(50) DEFAULT NULL COMMENT '职称，正高-副高-中级-初级',
  `refree_id` int(11) DEFAULT '0' COMMENT '推荐人',
  `addtime` int(11) DEFAULT '0' COMMENT '加入时间',
  `longlearn` int(11) DEFAULT '0' COMMENT '持续学习时长',
  `longlearn_time` int(11) DEFAULT '0' COMMENT '时长更新时间，5秒更新一次总时长和持续时长，持续时长记录更新时间超过10秒从0开始',
  `applyinfo_status` tinyint(4) DEFAULT '0' COMMENT '申请分社状态：1通过；2不通过',
  `applyinfo_type` tinyint(4) DEFAULT '0' COMMENT '分社是否：1是；2否',
  `sex` varchar(20) DEFAULT NULL COMMENT '性别',
  `realname` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of ec_user
-- ----------------------------
INSERT INTO `ec_user` VALUES ('6', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/avatar/oSXea0rmvuhm4uicHnQ0GLo-cEH0.jpg', '夜微凉。', 'oSXea0rmvuhm4uicHnQ0GLo-cEH0', null, '1', '1512057600', '1', '30', null, '0.00', '20', null, null, null, null, '0', '1508726978', '0', '1508751869', '0', '0', '女', null, null);
INSERT INTO `ec_user` VALUES ('7', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/avatar/oSXea0lNkz2-1MJFbB6lnrE_NN9o.jpg', '大大横', 'oSXea0lNkz2-1MJFbB6lnrE_NN9o', null, '0', '1541827038', '1', '38860', '13333333333', '4823.97', '30', '北京市', '北京市', '西安弈聪软呃', '设计师', '7', '1508737678', '155', '1513389593', '0', '0', '男', '刘小恒', '2017-10-27');
INSERT INTO `ec_user` VALUES ('8', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/avatar/oSXea0qQ7wqikf6W70uPe5hY0R-s.jpg', '@陇上牧人', 'oSXea0qQ7wqikf6W70uPe5hY0R-s', '1509113295', '1', '1540649295', '1', '25', '13333333333', '50500.00', '20', null, null, null, null, '7', '1508812765', '0', '1509549700', '0', '0', '男', null, null);
INSERT INTO `ec_user` VALUES ('9', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/avatar/oSXea0uyfJI1WPRV_u_rxYCRbBfA.jpg', '高山', 'oSXea0uyfJI1WPRV_u_rxYCRbBfA', '1508859309', '1', '1540395309', '1', '105', null, '0.00', '0', null, null, null, null, '0', '1508813103', '90', '1509873897', '0', '0', '男', null, null);
INSERT INTO `ec_user` VALUES ('10', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/avatar/oSXea0n2s9mscd3PDKcqpuzgzcp0.jpg', '微小宝', 'oSXea0n2s9mscd3PDKcqpuzgzcp0', null, '0', '0', '1', '1720', '13322985380', '50000.00', '0', '广东省', '深圳市', '深圳简异思维教育科技有限公司', '经理', '0', '1508863727', '335', '1509876425', '0', '0', '男', '丁军', '2017-08-29');
INSERT INTO `ec_user` VALUES ('11', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/avatar/oSXea0gXS6_NjYZN1_pjDtJTLv_Q.jpg', '二营长你的意大利炮呢', 'oSXea0gXS6_NjYZN1_pjDtJTLv_Q', null, '0', '0', '1', '0', null, '999.90', '0', null, null, null, null, '0', '1509006888', '0', '0', '0', '0', '男', null, null);
INSERT INTO `ec_user` VALUES ('12', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/avatar/oSXea0tHdW3rN1oozOhpMKISOefA.jpg', '尹宏刚', 'oSXea0tHdW3rN1oozOhpMKISOefA', null, '0', '0', '1', '0', null, '50000.00', '0', null, null, null, null, '0', '1509075737', '0', '0', '0', '0', '男', null, null);
INSERT INTO `ec_user` VALUES ('13', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/avatar/oSXea0vOC7CBzqmZ6kMnq8i9TU_A.jpg', '差不多先生', 'oSXea0vOC7CBzqmZ6kMnq8i9TU_A', null, '0', '0', '1', '70', null, '0.00', '0', null, null, null, null, '0', '1509094710', '15', '1509094861', '0', '0', '男', null, null);

-- ----------------------------
-- Table structure for `ec_userlevel`
-- ----------------------------
DROP TABLE IF EXISTS `ec_userlevel`;
CREATE TABLE `ec_userlevel` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `level_name` varchar(50) DEFAULT NULL COMMENT '等级名称',
  `level_learntime` int(11) DEFAULT '0' COMMENT '学习时长，秒',
  `level_score` int(11) DEFAULT '0' COMMENT '学习学分',
  `level_remark` text COMMENT '简介',
  `level_image` varchar(255) DEFAULT NULL COMMENT '等级图标',
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户等级表';

-- ----------------------------
-- Records of ec_userlevel
-- ----------------------------
INSERT INTO `ec_userlevel` VALUES ('1', '童生', '0', '0', '童生级别', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1503907391202&di=bea9cbfa83a001f97b535254279a2ed2&imgtype=jpg&src=http%3A%2F%2Fimg3.imgtn.bdimg.com%2Fit%2Fu%3D2751107750%2C3267357906%26fm%3D214%26gp%3D0.jpg');
INSERT INTO `ec_userlevel` VALUES ('2', '秀才', '50000', '0', '秀才级别', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1503907391202&di=bea9cbfa83a001f97b535254279a2ed2&imgtype=jpg&src=http%3A%2F%2Fimg3.imgtn.bdimg.com%2Fit%2Fu%3D2751107750%2C3267357906%26fm%3D214%26gp%3D0.jpg');
INSERT INTO `ec_userlevel` VALUES ('3', '举人', '100000', '0', '举人级别', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1503907391202&di=bea9cbfa83a001f97b535254279a2ed2&imgtype=jpg&src=http%3A%2F%2Fimg3.imgtn.bdimg.com%2Fit%2Fu%3D2751107750%2C3267357906%26fm%3D214%26gp%3D0.jpg');
INSERT INTO `ec_userlevel` VALUES ('4', '进士', '2000000', '0', '进士级别', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1503907391202&di=bea9cbfa83a001f97b535254279a2ed2&imgtype=jpg&src=http%3A%2F%2Fimg3.imgtn.bdimg.com%2Fit%2Fu%3D2751107750%2C3267357906%26fm%3D214%26gp%3D0.jpg');
INSERT INTO `ec_userlevel` VALUES ('8', '状元', '10000000', '0', 'dhfshsf', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1503907391202&di=bea9cbfa83a001f97b535254279a2ed2&imgtype=jpg&src=http%3A%2F%2Fimg3.imgtn.bdimg.com%2Fit%2Fu%3D2751107750%2C3267357906%26fm%3D214%26gp%3D0.jpg');

-- ----------------------------
-- Table structure for `ec_viplevel`
-- ----------------------------
DROP TABLE IF EXISTS `ec_viplevel`;
CREATE TABLE `ec_viplevel` (
  `vip_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `vip_name` varchar(50) DEFAULT NULL COMMENT 'VIP名称',
  `vip_year` int(11) DEFAULT '0' COMMENT '年份',
  `vip_money` float(8,2) DEFAULT '0.00' COMMENT '升级费用',
  `vip_title` varchar(255) DEFAULT NULL COMMENT '等级描述',
  `vip_remark` text COMMENT '简介',
  `vip_image` varchar(255) DEFAULT NULL COMMENT '等级图标',
  `vip_backmoney` float(8,2) DEFAULT '0.00' COMMENT '返现金额',
  PRIMARY KEY (`vip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='农学院VIP等级管理表';

-- ----------------------------
-- Records of ec_viplevel
-- ----------------------------
INSERT INTO `ec_viplevel` VALUES ('1', 'vip1', '1', '0.01', '测试用-订购vip1年0.01元', '<img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171023/20171023140235_99991.png\" alt=\"\" /><br />', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916163558_65489.png', '0.00');
INSERT INTO `ec_viplevel` VALUES ('2', 'vip2', '2', '1650.00', '订购vip2年1650元', '<img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171023/20171023140235_99991.png\" alt=\"\" /><br />', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916163609_84696.png', '0.00');
INSERT INTO `ec_viplevel` VALUES ('3', 'vip3', '3', '2350.00', '订购vip3年2350元 ', '<img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171023/20171023140235_99991.png\" alt=\"\" /><br />', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916163622_53582.png', '0.00');
INSERT INTO `ec_viplevel` VALUES ('5', 'vip5', '5', '3950.00', '订购vip5年3950元 ', '<img src=\"http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20171023/20171023140235_99991.png\" alt=\"\" /><br />', 'http://weixingc.ylii.org.cn/jianyinew/uploadfile/image/20170916/20170916163542_55661.png', '0.00');
INSERT INTO `ec_viplevel` VALUES ('10', '123', '1', '23.00', '123', '123', 'http://jianyi.com/uploadfile/image/20171128/20171128153722_99107.jpg', '123.00');
