<?php
if (version_compare(PHP_VERSION, '5.3.0', '<')) {
    die('require PHP > 5.3.0 !');
}

// 开启调试模式 建议开发阶段开启 部署阶段注释或者设为false
define('APP_DEBUG', true);

define('APP_PATH', './gtdmn/');

define('SITE_URL','https://www.nmclub.cc:444/');

define('HOME_URL',SITE_URL.'gtdmn/Public/Home/');

define('ADMIN_URL',SITE_URL.'gtdmn/Public/Admin/');

require './ThinkPHP/ThinkPHP.php';
