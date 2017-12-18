<?php
define('WEB_HOST', 'http://192.168.2.2/'); // 默认URL路径
//define('WEB_HOST', 'http://weixingc.ylii.org.cn/jianyinew/');// 默认URL路径
return array(
    //'配置项'=>'配置值'
	'DEFAULT_MODULE'        =>  'Admin',  // 默认模块
    'DEFAULT_CONTROLLER'    =>  'login', // 默认控制器名称
    'DEFAULT_ACTION'        =>  'login', // 默认操作名称
    'WEB_URL' => 'http://192.168.2.2/', // 默认URL路径
    //数据库配置信息
    'DB_TYPE' => 'mysql', // 数据库类型
    'DB_HOST' => '192.168.2.2', // 服务器地址
    'DB_NAME' => 'mrfat', // 数据库名
    'DB_USER' => 'root', // 用户名
    'DB_PWD' => 'root', // 密码
    'DB_PORT' => 3306, // 端口
    'DB_PARAMS' => array(), // 数据库连接参数
    'DB_PREFIX' => 'ec_', // 数据库表前缀 
    'DB_CHARSET' => 'utf8', // 字符集
    'DB_DEBUG' => false, // 数据库调试模式 开启后可以记录SQL日志
    //'SHOW_PAGE_TRACE'=>TRUE,//输出页面调试
    'LOG_RECORD' => false, //FALSE,//关闭log输出
	
	//高德地图key
	'Amap_Version'=>'1.3',//地图版本
	'Amap_Webserver_Key'=>'c639c96fc804ff68da0c45ffcd0730b2',//WEB服务端KEY
	'Amap_Web_Key'=>'d9c11d1b67d2b0977659d11a618187a0',//WEB端KEY

	//'SHOW_PAGE_TRACE'=>TRUE,//输出页面调试
	'LOG_RECORD' => TRUE,//FALSE,//关闭log输出

    /* 微信支付配置 */
    'WxPayConf' => array(
        'Token' => '147258369', //Token
        'APPID' => 'wx016c2ebd2b139b4a', //绑定支付的APPID
        'MCHID' => '1489587032', //MCHID：商户号
        'KEY' => 'e10adc3949ba59abbe56e057f20f883e', //商户支付密钥 md5('wx8645daad03ca46f1')
        'APPSECRET' => 'ddd39641e11fcee35a41b9fc837e4e4e', //公众帐号secert
        'SSLCERT_PATH' => WEB_HOST . 'ThinkPHP/Library/Vendor/WxpayAPI/cert/apiclient_cert.pem', //商户证书路径
        'SSLKEY_PATH' => WEB_HOST . 'ThinkPHP/Library/Vendor/WxpayAPI/cert/apiclient_key.pem', //商户证书路径
        'JS_API_CALL_URL' => WEB_HOST . 'index.php/Home/index/jsApiCall',
        'NOTIFY_URL' => WEB_HOST . 'index.php/Home/personal/notify',		//VIP购买微信回调
		'NOTIFY_URL_SEAT' => WEB_HOST . 'index.php/Home/bookinfo/notify',  //席位购买微信回调
		'NOTIFY_URL_COURSE' => WEB_HOST . 'index.php/Home/course/notify'   //课程购买微信回调
    ),
    'DB_BACKUP' => APP_PATH . "../Public/cache/dbbak/",

	/*系统名称*/
	'System' => array(
	   'admin_title'=>'后台管理系统', //系统名称
	   'home_title'=>'前台管理系统', //系统名称
	   'copyright'=>'版权所有 '.date('Y').' yqok.com 西安弈聪软件'
	)
);
