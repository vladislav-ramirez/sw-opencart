<?php
// Version
define('VERSION', '4.0.2.3');

define('APPLICATION_MODE', 'dev');

// Configuration
// 

if (APPLICATION_MODE === 'dev') {
	if (is_file('config.php')) {
		require_once('config.php');
	}
}else{
	if (is_file('config.production.php')) {
		require_once('config.production.php');
	}
}

// Installs
if (!defined('DIR_APPLICATION')) {
	header('Location: ../install/index.php');
	exit();
}

// Startup
require_once(DIR_SYSTEM . 'startup.php');

// Framework
require_once(DIR_SYSTEM . 'framework.php');
