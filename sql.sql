DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`(
	   `teacher_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师ID',
`teacher_job_number` varchar(64) NOT NULL UNIQUE comment '教师工号',
`teacher_name` varchar(64) comment '教师姓名',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (teacher_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '教师';

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`(
	   `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
`student_number` varchar(64) NOT NULL UNIQUE comment '学号',
`student_name` varchar(64) comment '学生姓名',
`class_name` varchar(64) comment '班级名称',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (student_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '学生';

DROP TABLE IF EXISTS `examination_notice`;
CREATE TABLE `examination_notice`(
	   `examination_notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考试通知ID',
`teacher_job_number` int(11) DEFAULT 0 comment '教师工号',
`teacher_name` varchar(64) comment '教师姓名',
`examination_subjects` varchar(64) comment '考试科目',
`examination_class` varchar(64) comment '考试班级',
`examination_time` datetime comment '考试时间',
`examination_scope` text comment '考试范围',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (examination_notice_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '考试通知';
insert into `examination_notice` values (1,0,'教师姓名1','考试科目1','考试班级1','2022-4-2 22:34:0','考试范围1','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `examination_notice` values (2,0,'教师姓名2','考试科目2','考试班级2','2022-4-2 22:34:0','考试范围2','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `examination_notice` values (3,0,'教师姓名3','考试科目3','考试班级3','2022-4-2 22:34:0','考试范围3','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `examination_notice` values (4,0,'教师姓名4','考试科目4','考试班级4','2022-4-2 22:34:0','考试范围4','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `examination_notice` values (5,0,'教师姓名5','考试科目5','考试班级5','2022-4-2 22:34:0','考试范围5','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `examination_notice` values (6,0,'教师姓名6','考试科目6','考试班级6','2022-4-2 22:34:0','考试范围6','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `examination_notice` values (7,0,'教师姓名7','考试科目7','考试班级7','2022-4-2 22:34:0','考试范围7','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `examination_notice` values (8,0,'教师姓名8','考试科目8','考试班级8','2022-4-2 22:34:0','考试范围8','0','2022-04-02 22:34:00','2022-04-02 22:34:00');

DROP TABLE IF EXISTS `class_grade`;
CREATE TABLE `class_grade`(
	   `class_grade_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '班级成绩ID',
`teacher_job_number` int(11) DEFAULT 0 comment '教师工号',
`teacher_name` varchar(64) comment '教师姓名',
`test_name` varchar(64) comment '考试名称',
`class_name` varchar(64) comment '班级名称',
`number_of_examinees` int(11) DEFAULT 0 comment '考试人数',
`highest_score` varchar(64) comment '最高分',
`lowest_score` varchar(64) comment '最低分',
`average` varchar(64) comment '平均分',
`remarks` text comment '备注',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (class_grade_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '班级成绩';
insert into `class_grade` values (1,0,'教师姓名1','考试名称1','班级名称1',5,'最高分1','最低分1','平均分1','备注1','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `class_grade` values (2,0,'教师姓名2','考试名称2','班级名称2',10,'最高分2','最低分2','平均分2','备注2','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `class_grade` values (3,0,'教师姓名3','考试名称3','班级名称3',15,'最高分3','最低分3','平均分3','备注3','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `class_grade` values (4,0,'教师姓名4','考试名称4','班级名称4',20,'最高分4','最低分4','平均分4','备注4','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `class_grade` values (5,0,'教师姓名5','考试名称5','班级名称5',25,'最高分5','最低分5','平均分5','备注5','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `class_grade` values (6,0,'教师姓名6','考试名称6','班级名称6',30,'最高分6','最低分6','平均分6','备注6','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `class_grade` values (7,0,'教师姓名7','考试名称7','班级名称7',35,'最高分7','最低分7','平均分7','备注7','0','2022-04-02 22:34:00','2022-04-02 22:34:00');
insert into `class_grade` values (8,0,'教师姓名8','考试名称8','班级名称8',40,'最高分8','最低分8','平均分8','备注8','0','2022-04-02 22:34:00','2022-04-02 22:34:00');

DROP TABLE IF EXISTS `topic_analysis`;
CREATE TABLE `topic_analysis`(
	   `topic_analysis_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目分析ID',
`teacher_job_number` int(11) DEFAULT 0 comment '教师工号',
`teacher_name` varchar(64) comment '教师姓名',
`subject` varchar(64) comment '题目',
`correct_rate` varchar(64) comment '正确率',
`reasons_for_losing_points` text comment '失分原因',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (topic_analysis_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '题目分析';
insert into `topic_analysis` values (1,0,'教师姓名1','题目1','正确率1','失分原因1','0','2022-04-02 22:34:01','2022-04-02 22:34:01');
insert into `topic_analysis` values (2,0,'教师姓名2','题目2','正确率2','失分原因2','0','2022-04-02 22:34:01','2022-04-02 22:34:01');
insert into `topic_analysis` values (3,0,'教师姓名3','题目3','正确率3','失分原因3','0','2022-04-02 22:34:01','2022-04-02 22:34:01');
insert into `topic_analysis` values (4,0,'教师姓名4','题目4','正确率4','失分原因4','0','2022-04-02 22:34:01','2022-04-02 22:34:01');
insert into `topic_analysis` values (5,0,'教师姓名5','题目5','正确率5','失分原因5','0','2022-04-02 22:34:01','2022-04-02 22:34:01');
insert into `topic_analysis` values (6,0,'教师姓名6','题目6','正确率6','失分原因6','0','2022-04-02 22:34:01','2022-04-02 22:34:01');
insert into `topic_analysis` values (7,0,'教师姓名7','题目7','正确率7','失分原因7','0','2022-04-02 22:34:01','2022-04-02 22:34:01');
insert into `topic_analysis` values (8,0,'教师姓名8','题目8','正确率8','失分原因8','0','2022-04-02 22:34:01','2022-04-02 22:34:01');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` varchar(500) DEFAULT NULL COMMENT '添加字段：',
  `field_set` varchar(500) DEFAULT NULL COMMENT '修改字段：',
  `field_get` varchar(500) DEFAULT NULL COMMENT '查询字段：',
  `table_nav_name` varchar(255) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(255) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定制授权';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '考试id',
  `name` varchar(32) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '考试名称：[2,32]',
  `duration` int(11) DEFAULT NULL COMMENT '答题时长',
  `score` double(8,2) DEFAULT NULL COMMENT '总分',
  `status` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '状态：启用、禁用',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='考试';
insert into `exam` values ('1','计算机基础考试','60','100','启用',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam` values ('2','大学语文','90','120','启用',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam` values ('3','C语言考试','70','100','禁用',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question` (
  `exam_question_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '类型',
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '题目',
  `question_item` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '选项',
  `answer` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '参考答案',
  `score` double(8,2) DEFAULT NULL COMMENT '总分',
  `question_order` int(11) DEFAULT NULL COMMENT '排序',
  `exam_id` mediumint(8) DEFAULT NULL COMMENT '所属试卷',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`exam_question_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `exam_question` values ('1','单选题','启动Word后，空白文档的文档名为（　　）。','A、untitled
B、文档1.DOC
C、新文档.DOC
D、我的文档.DOC','C、新文档.DOC','10','1','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('2','单选题','Word软件处理的主要对象是（　　）。','A、表格
B、文档
C、图片
D、数据','B、文档','10','2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('3','单选题','当前活动窗口是文档dl.doc的窗口，单击该窗口的“最小化”按钮（　　）。','A、不显示dl.doc文档内容，但dl.doc文档并未关闭
B、dl.doc文档未关闭，且继续显示其内容
C、该窗口和dl.doc文档都被关闭
D、关闭了dl.doc文档但该窗口并未关闭','A、不显示dl.doc文档内容，但dl.doc文档并未关闭','10','3','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('4','多选题','文件或文件夹的属性一般有（　　）。','A、只读
B、隐藏
C、存档
D、系统','A、只读|B、隐藏','10','4','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('5','多选题','电子计算机根据外观可以分为（　　）。','A、巨型机
B、便携机
C、微型机
D、游戏机','A、巨型机|B、便携机|C、微型机','10','5','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('6','判断题','Word和Windows都是系统软件。','A、正确
B、错误','B、错误','5','6','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('7','判断题','ROM的是只读存储器。','A、正确
B、错误','A、正确','5','7','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('8','判断题','在存储器容量的表示中,1MB的含义是1024K个汉字。','A、正确
B、错误','B、错误','5','8','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('9','填空题','在Word文档中，每个段落都有自己的段落标记，段落标记的位置在______。','','段落的结尾处','10','9','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('10','填空题','能显示页眉和页脚的方式是______。','','页面视图','10','10','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('11','主观题','请简述一下计算机的工作原理？','','计算机最主要的工作原理是存储程序与程序控制','15','11','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('18','单选题','下列诗歌属于乐府旧题的有( )','A、《短歌行》
B、《饮酒》
C、《蛇》','A、《短歌行》','5','1','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('19','单选题','提倡“文章合为时而著，歌诗合为事而作”的唐代诗人是( )','A、韩愈
B、柳宗元
C、白居易','C、白居易','5','2','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('20','单选题','“甘其食，美其服，乐其俗”中的“甘”“美”“乐”属( )','A、使动词
B、意动词
C、名词','B、意动词','5','3','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('21','单选题','“功施到今”中“施”读作( )','A、yi
B、si
C、shi','A、yi','5','4','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('22','单选题','“回眸一笑百媚生，六宫粉黛无颜色”的作者是(  )','A、陆游
B、唐琬
C、白居易','C、白居易','5','5','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('23','多选题','《采薇》一诗的艺术特点是( )','A、反复咏叹
B、抒情和写景融为一体
C、起兴手法','A、反复咏叹|B、抒情和写景融为一体|C、起兴手法','10','6','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('24','多选题','“回眸一笑百媚生，六宫粉黛无颜色”运用的修辞手法有( )','A、夸张
B、对比
C、借代','A、夸张|B、对比|C、借代','10','7','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('25','多选题','不是《西厢记.长亭送别》一折戏的主角是( )','A、崔莺莺
B、张珙
C、红娘','C、红娘','10','8','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('26','填空题','《铸剑》属于____。','','小说','5','9','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('27','填空题','“对酒当歌，人生几何?”的作者是____。','','曹操','5','10','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('28','填空题','《诗经》中的“风”是____。','','国风','5','11','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('29','填空题','《采薇》是选自《诗经》的____。','','《小雅》','5','12','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('30','判断题','王维的《送梓州李使君》是一首赠别诗','A、正确
B、错误','A、正确','5','13','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('31','判断题','《乡愁》属于余秋雨的作品','A、正确
B、错误','B、错误','5','14','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('32','判断题','《雅舍》属于梁实秋的作品','A、正确
B、错误','A、正确','5','15','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('33','主观题','默写《短歌行》','','对酒当歌，人生几何！ 譬如朝露，去日苦多。 慨当以慷，忧思难忘。 何以解忧？唯有杜康。 青青子衿，悠悠我心。 但为君故，沉吟至今。 呦呦鹿鸣，食野之苹。 我有嘉宾，鼓瑟吹笙。 明明如月，何时可掇？ 忧从中来，不可断绝。 越陌度阡，枉用相存。 契阔谈讌，心念旧恩。 月明星稀，乌鹊南飞。 绕树三匝，何枝可依？ 山不厌高，海不厌深。 周公吐哺，天下归心。','15','16','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('34','主观题','分析王维的《送梓州李使君》是在什么时代背景下抒写的？体现了当时的社会环境是如何的？','','这是一首送别之作。具体创作时间不详，李使君当是初往梓州（治今四川三台）赴任，王维写此诗相赠。','15','17','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('35','单选题','以下选项中，不能作为合法常量的是______。','A、1.234e04
B、1.234e0.4
C、1.234e+4
D、1.234e0','B、1.234e0.4','5','1','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('36','单选题','以下符合C语言语法的实型常量是______。','A、1.2E0.5
B、3.14159E
C、.5E-3
D、E15','C、.5E-3','5','2','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('37','单选题','设int a=12，则执行完语句a+=a-=a*a后，a的值是______。','A、552
B、264
C、144
D、-264','D、-264','5','3','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('38','单选题','若要求在if后一对圆括号中表示a不等于0的关系,则能正确表示这一关系的表达式为______','A、a<>0
B、!a
C、a=0
D、a','D、a','5','4','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('39','单选题','已知有double型变量x=2.5,y=4.7,整型变量a=7,  则表达式 x+a%3*(int)(x+y)%2/4 的值是_______','A、2.4
B、2.5
C、2.75
D、0','B、2.5','5','5','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('40','判断题','一个C语言的执行是从本程序的第一个函数开始,到本程序的最后一个函数结束','A、正确
B、错误','B、错误','5','6','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('41','判断题','为了避免嵌套的if-else语句的二义性，C语言规定else总是与在其之前未配对的if组成配对关系.','A、正确
B、错误','B、错误','5','7','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('42','判断题','设x 、y 、z 、t均为int型变量,则执行以下语句后,t的值为1.  x=y=z=1;  t=++x || ++y && ++z;','A、正确
B、错误','A、正确','5','8','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('43','判断题','下面程序段的输出结果是输出错误信息.  x=3;  do { y=x--;  if (!y) {printf("*");continue;}  printf("#");  } while(x=2);','A、正确
B、错误','B、错误','5','9','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('44','判断题','下面程序段的运行结果是123.  int n=0;  while (n++<=2)  printf("%d",n);','A、正确
B、错误','A、正确','5','10','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('45','主观题','下面程序的运行结果是_______.  #include<stdio.h>  void main( )  { int a,b;  a=-1;  b=0;  do {  ++a;  ++a;  b+=a;  } while(a<9);  printf("%d
",b);  }','','25','8','11','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('46','主观题','以下函数的功能是：求x的y次方，请填空._______  #include<stdio.h>  void main()  { int i,x,y;  double z;  scanf("%d %d",&x,&y);  for(i=1,z=x;i<y;i++)  z=z*______ ;  printf("x^y=%e
",z);  }','','x','8','12','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('47','主观题','下面程序的输出结果是_____.  #include<stdio.h>  void main( )  { int i;  for(i=1;i<6;i++)  { if (i%2!=0) {printf("#");continue;}  printf("*");  }  printf("
");  }','','#*#*#','8','13','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('48','主观题','有如下程序  #include<stdio.h>  void main( )  { int n=9;  while(n>6) {n--;printf("%d",n);}  }  该程序段的输出结果是_____.','','876','8','14','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('49','主观题','阅读以下程序，程序运行后的输出结果是____.  #include<stdio.h>  void main( )  { int x;  for(x=5;x>0;x--)  if (x--<5) printf("%d,",x);  else printf("%d,",x++); }','','4,3,1','8','15','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `exam_question` values ('50','主观题','#include <stdio.h>  void main()  { int a[4][4]={{1,3,5,},{2,4,6},{3,5,7}};  printf("%d%d%d%d
",a[0][3],a[1][2],a[2][1],a[3][0]);  }，程序的输出结果是？','','0650','10','16','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_answer`;
CREATE TABLE `user_answer` (
  `user_answer_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) NOT NULL COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `exam_id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '考试id',
  `score` double(8,2) DEFAULT '0.00' COMMENT '分数',
  `answers` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '答案',
  `score_detail` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '评分详情',
  `objective_score` double(8,2) DEFAULT '0.00' COMMENT '客观题得分',
  `subjective_score` double(8,2) DEFAULT '0.00' COMMENT '主观题得分',
  `score_state` tinyint(2) DEFAULT '0' COMMENT '评分状态',
  `nickname` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '提交人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`user_answer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `user_answer` values ('1','1','2','100','[{"exam_question_id":12,"answer":"A.1"},{"exam_question_id":13,"answer":["A.1","B.5"]},{"exam_question_id":14,"answer":"A.正确"},{"exam_question_id":15,"answer":"挂号费"},{"exam_question_id":16,"answer":"发货的共和国"}]','[{"exam_question_id":12,"score":10},{"exam_question_id":13,"score":20},{"exam_question_id":14,"score":30},{"exam_question_id":15,"score":20},{"exam_question_id":16,"score":20}]','60','40','1','admin',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `user_answer` values ('2','1','1','75','[{"exam_question_id":1,"answer":"C、新文档.DOC"},{"exam_question_id":2,"answer":"B、文档"},{"exam_question_id":3,"answer":"A、不显示dl.doc文档内容，但dl.doc文档并未关闭"},{"exam_question_id":4,"answer":["B、隐藏","A、只读"]},{"exam_question_id":5,"answer":["A、巨型机","B、便携机","C、微型机"]},{"exam_question_id":6,"answer":"B、错误"},{"exam_question_id":7,"answer":"A、正确"},{"exam_question_id":8,"answer":"B、错误"},{"exam_question_id":9,"answer":"页面尾部"},{"exam_question_id":10,"answer":"页面尾部"},{"exam_question_id":11,"answer":"我也不知道呀"}]','[{"exam_question_id":1,"score":10},{"exam_question_id":2,"score":10},{"exam_question_id":3,"score":10},{"exam_question_id":4,"score":10},{"exam_question_id":5,"score":10},{"exam_question_id":6,"score":5},{"exam_question_id":7,"score":5},{"exam_question_id":8,"score":5},{"exam_question_id":9,"score":0},{"exam_question_id":10,"score":10},{"exam_question_id":11,"score":0}]','65','10','1','admin',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `auth` values ('1','管理员','教师','teacher','教师','/teacher/table','','_blank','1','1','1','1','teacher_job_number,teacher_name','teacher_job_number,teacher_name','teacher_job_number,teacher_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('2','管理员','教师','teacher','教师详情','/teacher/view','','_blank','1','1','1','1','teacher_job_number,teacher_name','teacher_job_number,teacher_name','teacher_job_number,teacher_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('3','管理员','学生','student','学生','/student/table','','_blank','1','1','1','1','student_number,student_name,class_name','student_number,student_name,class_name','student_number,student_name,class_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('4','管理员','学生','student','学生详情','/student/view','','_blank','1','1','1','1','student_number,student_name,class_name','student_number,student_name,class_name','student_number,student_name,class_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('5','管理员','考试通知','examination_notice','考试通知','/examination_notice/table','','_blank','1','1','1','1','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('6','管理员','考试通知','examination_notice','考试通知详情','/examination_notice/view','','_blank','1','1','1','1','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('7','管理员','班级成绩','class_grade','班级成绩','/class_grade/table','','_blank','1','1','1','1','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('8','管理员','班级成绩','class_grade','班级成绩详情','/class_grade/view','','_blank','1','1','1','1','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('9','管理员','题目分析','topic_analysis','题目分析','/topic_analysis/table','','_blank','1','1','1','1','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('10','管理员','题目分析','topic_analysis','题目分析详情','/topic_analysis/view','','_blank','1','1','1','1','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('11','管理员','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('12','管理员','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('13','管理员','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('14','管理员','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('15','管理员','考试','exam','考试列表','/exam/table','','_blank','1','1','1','1','','','',null,'1','{"export_db":true,"setting":true,"answers":true,"give_score":true}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('16','管理员','考试','exam','考试详情','/exam/view','','_blank','1','1','1','1','','','',null,'1','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('17','管理员','考试','exam','前台列表','/exam/list','','_blank','0','0','0','0','','','',null,'0','{"answers":false}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('18','管理员','考试','exam','前台详情','/exam/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('19','游客','教师','teacher','教师','/teacher/table','','_blank','0','0','0','0','teacher_job_number,teacher_name','teacher_job_number,teacher_name','teacher_job_number,teacher_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('20','游客','教师','teacher','教师详情','/teacher/view','','_blank','0','0','0','0','teacher_job_number,teacher_name','teacher_job_number,teacher_name','teacher_job_number,teacher_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('21','游客','学生','student','学生','/student/table','','_blank','0','0','0','0','student_number,student_name,class_name','student_number,student_name,class_name','student_number,student_name,class_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('22','游客','学生','student','学生详情','/student/view','','_blank','0','0','0','0','student_number,student_name,class_name','student_number,student_name,class_name','student_number,student_name,class_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('23','游客','考试通知','examination_notice','考试通知','/examination_notice/table','','_blank','0','0','0','0','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('24','游客','考试通知','examination_notice','考试通知详情','/examination_notice/view','','_blank','0','0','0','0','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('25','游客','班级成绩','class_grade','班级成绩','/class_grade/table','','_blank','0','0','0','0','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('26','游客','班级成绩','class_grade','班级成绩详情','/class_grade/view','','_blank','0','0','0','0','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('27','游客','题目分析','topic_analysis','题目分析','/topic_analysis/table','','_blank','0','0','0','0','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('28','游客','题目分析','topic_analysis','题目分析详情','/topic_analysis/view','','_blank','0','0','0','0','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('29','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('30','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('31','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('32','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('33','游客','考试','exam','考试列表','/exam/table','','_blank','0','0','0','0','','','',null,'0','{"export_db":false,"setting":false,"answers":false,"give_score":false}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('34','游客','考试','exam','考试详情','/exam/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('35','游客','考试','exam','前台列表','/exam/list','','_blank','0','0','0','0','','','',null,'0','{"answers":false}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('36','游客','考试','exam','前台详情','/exam/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('37','教师','教师','teacher','教师','/teacher/table','','_blank','0','0','0','0','teacher_job_number,teacher_name','teacher_job_number,teacher_name','teacher_job_number,teacher_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('38','教师','教师','teacher','教师详情','/teacher/view','','_blank','0','0','0','0','teacher_job_number,teacher_name','teacher_job_number,teacher_name','teacher_job_number,teacher_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('39','教师','学生','student','学生','/student/table','','_blank','0','0','0','1','student_number,student_name,class_name','student_number,student_name,class_name','student_number,student_name,class_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('40','教师','学生','student','学生详情','/student/view','','_blank','0','0','0','1','student_number,student_name,class_name','student_number,student_name,class_name','student_number,student_name,class_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('41','教师','考试通知','examination_notice','考试通知','/examination_notice/table','','_blank','1','1','1','1','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('42','教师','考试通知','examination_notice','考试通知详情','/examination_notice/view','','_blank','1','1','1','1','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('43','教师','班级成绩','class_grade','班级成绩','/class_grade/table','','_blank','1','1','1','1','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('44','教师','班级成绩','class_grade','班级成绩详情','/class_grade/view','','_blank','1','1','1','1','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('45','教师','题目分析','topic_analysis','题目分析','/topic_analysis/table','','_blank','1','1','1','1','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('46','教师','题目分析','topic_analysis','题目分析详情','/topic_analysis/view','','_blank','1','1','1','1','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('47','教师','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('48','教师','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('49','教师','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('50','教师','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('51','教师','考试','exam','考试列表','/exam/table','','_blank','1','1','1','1','','','',null,'0','{"export_db":true,"setting":true,"answers":true,"give_score":true}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('52','教师','考试','exam','考试详情','/exam/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('53','教师','考试','exam','前台列表','/exam/list','','_blank','0','0','0','0','','','',null,'0','{"answers":false}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('54','教师','考试','exam','前台详情','/exam/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('55','学生','教师','teacher','教师','/teacher/table','','_blank','0','0','0','0','teacher_job_number,teacher_name','teacher_job_number,teacher_name','teacher_job_number,teacher_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('56','学生','教师','teacher','教师详情','/teacher/view','','_blank','0','0','0','0','teacher_job_number,teacher_name','teacher_job_number,teacher_name','teacher_job_number,teacher_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('57','学生','学生','student','学生','/student/table','','_blank','0','0','0','0','student_number,student_name,class_name','student_number,student_name,class_name','student_number,student_name,class_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('58','学生','学生','student','学生详情','/student/view','','_blank','0','0','0','0','student_number,student_name,class_name','student_number,student_name,class_name','student_number,student_name,class_name',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('59','学生','考试通知','examination_notice','考试通知','/examination_notice/table','','_blank','0','0','0','1','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('60','学生','考试通知','examination_notice','考试通知详情','/examination_notice/view','','_blank','0','0','0','1','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope','teacher_job_number,teacher_name,examination_subjects,examination_class,examination_time,examination_scope',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('61','学生','班级成绩','class_grade','班级成绩','/class_grade/table','','_blank','0','0','0','0','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('62','学生','班级成绩','class_grade','班级成绩详情','/class_grade/view','','_blank','0','0','0','0','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks','teacher_job_number,teacher_name,test_name,class_name,number_of_examinees,highest_score,lowest_score,average,remarks',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('63','学生','题目分析','topic_analysis','题目分析','/topic_analysis/table','','_blank','0','0','0','0','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('64','学生','题目分析','topic_analysis','题目分析详情','/topic_analysis/view','','_blank','0','0','0','0','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points','teacher_job_number,teacher_name,subject,correct_rate,reasons_for_losing_points',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('65','学生','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('66','学生','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('67','学生','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('68','学生','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('69','学生','考试','exam','考试列表','/exam/table','','_blank','0','0','0','1','','','',null,'0','{"export_db":false,"setting":false,"answers":true,"give_score":false}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('70','学生','考试','exam','考试详情','/exam/view','','_blank','0','0','0','1','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('71','学生','考试','exam','前台列表','/exam/list','','_blank','0','0','0','0','','','',null,'0','{"answers":false}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `auth` values ('72','学生','考试','exam','前台详情','/exam/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `user_group` values ('3','100','教师',null,'teacher','teacher_id','0','0',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
insert into `user_group` values ('4','100','学生',null,'student','student_id','0','0',"2022-04-02 14:34:01.000 ","2022-04-02 14:34:01.000 ");
