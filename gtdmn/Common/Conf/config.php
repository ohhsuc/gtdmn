<?php
return array(
  //'配置项'=>'配置值'
		'DB_TYPE'=>'mysql', //数据库类型
		'DB_HOST'=>'127.0.0.1', //服务器地址
		'DB_NAME'=>'gt_db', //数据库名
		'DB_USER'=>'root', //用户名
		'DB_PWD'=>'123456', //密码
		'DB_PORT'=>3306, //端口
		'DB_PREFIX'=>'gt_',

 		'TMPL_L_DELIM'=>'<{',
 		'TMPL_R_DELIM'=>'}>',

 		//'SHOW_PAGE_TRACE' =>true,  //调试工具

		'MODULE_ALLOW_LIST' => array('Home','Admin'),

		'DEFAULT_MODULE' => 'Home',

		'URL_CASE_INSENSITIVE' => true,

		'URL_ROUTER_ON'=>true, //启用路由

		'URL_ROUTER_RULES'=>array(  //路由配置

		),


		'AUTH_CONFIG' => array(
				'AUTH_ON' => true, 					//认证开关
				'AUTH_TYPE' => 1, 					//认证方式，1为实时认证; 2为登陆认证
				'AUTH_GROUP' => 'gt_auth_group', //用户组表名
				'AUTH_GROUP_ACCESS' => 'gt_auth_group_access', //用户组明细表
				'AUTH_RULE' => 'gt_auth_rule', 	//权限规则表
				'AUTH_USER' => 'gt_user' 		//用户信息表
		),

		//默认错误跳转对应的模板文件
		'TMPL_ACTION_ERROR' => 'Public:EXEC/jump',
		//默认成功跳转对应的模板文件
		'TMPL_ACTION_SUCCESS' => 'Public:EXEC/jump',
);
