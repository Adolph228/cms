DROP TABLE IF EXISTS user_info;
CREATE TABLE `user_info` (
	`uid` bigint(20) unsigned NOT NULL,
	`username` varchar(128) DEFAULT NULL COMMENT '帐号',
	`name` varchar(128) DEFAULT NULL COMMENT '昵称或者真实姓名',
	`password` varchar(128) DEFAULT NULL COMMENT '密码',
	`salt` varchar(128) DEFAULT NULL COMMENT '加密密码的盐',
	`state` varchar(128) DEFAULT NULL COMMENT '用户状态,0:创建未认证（比如没有激活，没有输入验证码等等）--等待验证的用户 , 1:正常状态,2：用户被锁定.',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户信息';
INSERT INTO `user_info` (`uid`,`username`,`name`,`password`,`salt`,`state`) VALUES ('1', 'admin', '管理员', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', 1);

DROP TABLE IF EXISTS sys_permission;
CREATE TABLE `sys_permission` (
	`id` bigint(20) unsigned NOT NULL,
	`available` bit(1) DEFAULT b'1' COMMENT '是否有效（0-无效，1-有效）',
	`name` varchar(128) DEFAULT NULL COMMENT '名称',
	`parent_id` bigint(20) unsigned NOT NULL COMMENT '父编号',
	`parent_ids` varchar(128) DEFAULT NULL COMMENT '父编号列表',
	`permission` varchar(128) DEFAULT NULL COMMENT '权限字符串,menu例子：role:*，button例子：role:create,role:update,role:delete,role:view',
	`resource_type` varchar(128) DEFAULT NULL COMMENT '资源类型，[menu|button]',
	`url` varchar(255) DEFAULT NULL COMMENT '资源路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限信息';
INSERT INTO `sys_permission` (`id`,`available`,`name`,`parent_id`,`parent_ids`,`permission`,`resource_type`,`url`) VALUES (1,1,'用户管理',0,'0/','userInfo:view','menu','userInfo/userList');
INSERT INTO `sys_permission` (`id`,`available`,`name`,`parent_id`,`parent_ids`,`permission`,`resource_type`,`url`) VALUES (2,1,'用户添加',1,'0/1','userInfo:add','button','userInfo/userAdd');
INSERT INTO `sys_permission` (`id`,`available`,`name`,`parent_id`,`parent_ids`,`permission`,`resource_type`,`url`) VALUES (3,1,'用户删除',1,'0/1','userInfo:del','button','userInfo/userDel');

DROP TABLE IF EXISTS sys_role;
CREATE TABLE `sys_role` (
`id` bigint(20) unsigned NOT NULL,
`available` bit(1) DEFAULT b'1' COMMENT '是否有效（0-无效，1-有效）',
`description` varchar(128) DEFAULT NULL COMMENT '角色描述,UI界面显示使用',
`role` varchar(128) DEFAULT NULL COMMENT '角色标识程序中判断使用,如"admin",这个是唯一的:',	
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色信息';
INSERT INTO `sys_role` (`id`,`available`,`description`,`role`) VALUES (1,1,'管理员','admin');
INSERT INTO `sys_role` (`id`,`available`,`description`,`role`) VALUES (2,1,'VIP会员','vip');
INSERT INTO `sys_role` (`id`,`available`,`description`,`role`) VALUES (3,1,'test','test');

DROP TABLE IF EXISTS sys_role_permission;
CREATE TABLE `sys_role_permission` (
`permission_id`  bigint(20) unsigned NOT NULL,
`role_id`  bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色权限信息';
INSERT INTO `sys_role_permission` (`permission_id`,`role_id`) VALUES (1,1);
INSERT INTO `sys_role_permission` (`permission_id`,`role_id`) VALUES (2,1);
INSERT INTO `sys_role_permission` (`permission_id`,`role_id`) VALUES (3,2);

DROP TABLE IF EXISTS sys_user_role;
CREATE TABLE `sys_user_role` (
`role_id`  bigint(20) unsigned NOT NULL,
`uid`  bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色用户信息';
INSERT INTO `sys_user_role` (`role_id`,`uid`) VALUES (1,1);